<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1351277847344" ID="ID_396356850" MODIFIED="1352219035845" TEXT="Software Development">
<node CREATED="1352159975943" ID="ID_116831363" MODIFIED="1352219482210" POSITION="right" TEXT="Books">
<node CREATED="1352160001031" ID="ID_753782182" MODIFIED="1352160015620" TEXT="Struction and Interpretation of Computer Programs">
<node CREATED="1352160016021" ID="ID_871621437" LINK="http://mitpress.mit.edu/sicp/full-text/book/book.html" MODIFIED="1352160016021" TEXT="mitpress.mit.edu &gt; Sicp &gt; Full-text &gt; Book &gt; Book"/>
<node CREATED="1352160151117" ID="ID_867197179" LINK="http://groups.csail.mit.edu/mac/classes/6.001/abelson-sussman-lectures/" MODIFIED="1352160151117" TEXT="groups.csail.mit.edu &gt; Mac &gt; Classes &gt; 6.001 &gt; Abelson-sussman-lectures"/>
</node>
</node>
<node CREATED="1351277864652" ID="ID_1699766416" MODIFIED="1352352732317" POSITION="right" TEXT="Programming Languages">
<node CREATED="1351277890270" FOLDED="true" ID="ID_858680957" MODIFIED="1353454206305" TEXT="C/C++">
<node CREATED="1351281924433" FOLDED="true" ID="ID_1663781298" MODIFIED="1351282508670" TEXT="Fundamentals">
<node CREATED="1351277926459" FOLDED="true" ID="ID_813455313" MODIFIED="1351281928279" TEXT="Callbacks and Signals">
<node CREATED="1351278664809" FOLDED="true" ID="ID_1003202362" LINK="http://developer.gnome.org/gtk-tutorial/stable/x159.html" MODIFIED="1351278746572" TEXT="developer.gnome.org &gt; Gtk-tutorial &gt; Stable &gt; X159">
<node CREATED="1351277951566" ID="ID_1049895359" MODIFIED="1351277967036" TEXT="Theory of Signals and Callbacks&#xa;&#x9;&#xa;In version 2.0, the signal system has been moved from GTK to GLib, therefore the functions and types explained in this section have a &quot;g_&quot; prefix rather than a &quot;gtk_&quot; prefix. We won&apos;t go into details about the extensions which the GLib 2.0 signal system has relative to the GTK 1.2 signal system.&#xa;&#xa;Before we look in detail at helloworld, we&apos;ll discuss signals and callbacks. GTK is an event driven toolkit, which means it will sleep in gtk_main() until an event occurs and control is passed to the appropriate function.&#xa;&#xa;This passing of control is done using the idea of &quot;signals&quot;. (Note that these signals are not the same as the Unix system signals, and are not implemented using them, although the terminology is almost identical.) When an event occurs, such as the press of a mouse button, the appropriate signal will be &quot;emitted&quot; by the widget that was pressed. This is how GTK does most of its useful work. There are signals that all widgets inherit, such as &quot;destroy&quot;, and there are signals that are widget specific, such as &quot;toggled&quot; on a toggle button.&#xa;&#xa;To make a button perform an action, we set up a signal handler to catch these signals and call the appropriate function. This is done by using a function such as:&#xa;&#xa;gulong g_signal_connect( gpointer      *object,&#xa;                         const gchar   *name,&#xa;                         GCallback     func,&#xa;                         gpointer      func_data );&#xa;where the first argument is the widget which will be emitting the signal, and the second the name of the signal you wish to catch. The third is the function you wish to be called when it is caught, and the fourth, the data you wish to have passed to this function.&#xa;&#xa;The function specified in the third argument is called a &quot;callback function&quot;, and should generally be of the form&#xa;&#xa;void callback_func( GtkWidget *widget,&#xa;                    ... /* other signal arguments */&#xa;                    gpointer   callback_data );&#xa;where the first argument will be a pointer to the widget that emitted the signal, and the last a pointer to the data given as the last argument to the g_signal_connect() function as shown above.&#xa;&#xa;Note that the above form for a signal callback function declaration is only a general guide, as some widget specific signals generate different calling parameters.&#xa;&#xa;Another call used in the helloworld example, is:&#xa;&#xa;gulong g_signal_connect_swapped( gpointer     *object,&#xa;                                 const gchar  *name,&#xa;                                 GCallback    func,&#xa;                                 gpointer     *callback_data );&#xa;g_signal_connect_swapped() is the same as g_signal_connect() except that the instance on which the signal is emitted and data will be swapped when calling the handler. So when using this function to connect signals, the callback should be of the form&#xa;&#xa;void callback_func( gpointer   callback_data,&#xa;                    ... /* other signal arguments */&#xa;                    GtkWidget *widget);&#xa;where the object is usually a widget. We usually don&apos;t setup callbacks for g_signal_connect_swapped() however. They are usually used to call a GTK function that accepts a single widget or object as an argument, when a signal is emitted on some other object. In the helloworld example, we connect to the &quot;clicked&quot; signal on the button, but call gtk_widget_destroy() on the window.&#xa;&#xa;If your callbacks need additional data, use g_signal_connect() instead of g_signal_connect_swapped().&#xa;&#xa;"/>
</node>
</node>
<node CREATED="1351278590829" ID="ID_1608495041" MODIFIED="1351278595694" TEXT="L Values and R Values">
<node CREATED="1351278598035" ID="ID_1919177349" LINK="http://eli.thegreenplace.net/2011/12/15/understanding-lvalues-and-rvalues-in-c-and-c/" MODIFIED="1351278598035" TEXT="eli.thegreenplace.net &gt; 2011 &gt; 12 &gt; 15 &gt; Understanding-lvalues-and-rvalues-in-c-and-c"/>
</node>
</node>
<node CREATED="1351281931746" FOLDED="true" ID="ID_799287196" MODIFIED="1351282508094" TEXT="Frameworks/Toolkits/Libraries">
<node CREATED="1351281977128" ID="ID_1215081681" MODIFIED="1351281985356" TEXT="OpenFrameworks">
<node CREATED="1351281986533" ID="ID_1546058911" LINK="http://www.openframeworks.cc/" MODIFIED="1351281986533" TEXT="openframeworks.cc"/>
</node>
<node CREATED="1351281996579" ID="ID_314150376" MODIFIED="1351281998078" TEXT="Cinder">
<node CREATED="1351281998433" ID="ID_1763217931" LINK="http://libcinder.org/" MODIFIED="1351281998433" TEXT="libcinder.org"/>
</node>
<node CREATED="1351282049427" ID="ID_777450436" MODIFIED="1351282050989" TEXT="Wt">
<node CREATED="1351282051288" ID="ID_804447735" LINK="http://www.webtoolkit.eu/wt" MODIFIED="1351282051288" TEXT="webtoolkit.eu &gt; Wt"/>
</node>
</node>
<node CREATED="1352308039146" ID="ID_750445868" MODIFIED="1352308124519" TEXT="New in C++11">
<node CREATED="1352308047673" FOLDED="true" ID="ID_1404073006" MODIFIED="1352308324292">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3 charset="utf-8" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 0px; text-align: left; word-spacing: 0px; line-height: 25px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(0, 0, 0); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 22px !important; margin-left: 0px">
      <font size="4">Lambda Expressions </font>
    </h3>
  </body>
</html></richcontent>
<node CREATED="1352308259460" ID="ID_328066763" MODIFIED="1352308263955">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      A lambda expression lets you define functions locally, at the place of the call, thereby eliminating much of the tedium and security risks that function objects incur. A lambda expression has the form:
    </p>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      [capture](parameters)-&gt;return-type {body}
    </p>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      The&#160;<code style="white-space: pre-wrap">[]</code>&#160;construct inside a function call's argument list indicates the beginning of a lambda expression. Let's see a lambda example.
    </p>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Suppose you want to count how many uppercase letters a string contains. Using&#160;<code style="white-space: pre-wrap">for_each()</code>&#160;to traverses a char array, the following lambda expression determines whether each letter is in uppercase. For every uppercase letter it finds, the lambda expression increments&#160;<code style="white-space: pre-wrap">Uppercase</code>, a variable defined outside the lambda expression:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">int main()<br />{<br />   char s[]=&quot;Hello World!&quot;;<br />   int Uppercase = 0; //modified by the lambda<br />   for_each(s, s+sizeof(s), [&amp;Uppercase] (char c) {<br />    if (isupper(c))<br />     Uppercase++;<br />    });<br /> cout&lt;&lt; Uppercase&lt;&lt;&quot; uppercase letters in: &quot;&lt;&lt; s&lt;&lt;endl;<br />}</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      It's as if you defined a function whose body is placed inside another function call. The ampersand in<em>[&amp;Uppercase]</em>&#160;means that the lambda body gets a reference to&#160;<em>Uppercase</em>&#160;so it can modify it. Without the ampersand,&#160;<em>Uppercase</em>&#160;would be passed by value. C++11 lambdas include constructs for member functions as well.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308096230" FOLDED="true" ID="ID_1678112837" MODIFIED="1352308317896">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3 charset="utf-8" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 0px; text-align: left; word-spacing: 0px; line-height: 25px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(0, 0, 0); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 22px !important; margin-left: 0px">
      <font size="4">Automatic Type Deduction and&#160;<code style="white-space: pre-wrap">decltype</code> </font>
    </h3>
  </body>
</html></richcontent>
<node CREATED="1352308240628" ID="ID_1177311841" MODIFIED="1352308245354">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      In C++03, you must specify the type of an object when you declare it. Yet in many cases, an object&#8217;s declaration includes an initializer. C++11 takes advantage of this, letting you declare objects without specifying their types:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">auto x=0; //x has type int because 0 is int<br />auto c='a'; //char<br />auto d=0.5; //double<br />auto national_debt=14400000000000LL;//long long</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Automatic type deduction is chiefly useful when the type of the object is verbose or when it's automatically generated (in templates). Consider:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">void func(const vector&lt;int&gt; &amp;vi)<br />{<br />vector&lt;int&gt;::const_iterator ci=vi.begin();<br />}</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Instead, you can declare the iterator like this:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">auto ci=vi.begin();</pre>
    <blockquote style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      <p style="font-size: 13px; line-height: 18px">
        The keyword&#160;<code style="white-space: pre-wrap">auto</code>&#160;isn't new; it actually dates back the pre-ANSI C era. However, C++11 has changed its meaning;&#160;<code style="white-space: pre-wrap">auto</code>&#160;no longer designates an object with automatic storage type. Rather, it declares an object whose type is deducible from its initializer. The old meaning of&#160;<code style="white-space: pre-wrap">auto </code>was removed from C++11 to avoid confusion.
      </p>
    </blockquote>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      C++11 offers a similar mechanism for capturing the type of an object or an expression. The new operator&#160;<code style="white-space: pre-wrap">decltype</code>&#160;takes an expression and &quot;returns&quot; its type:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">const vector&lt;int&gt; vi;<br />typedef decltype (vi.begin()) CIT;<br />CIT another_const_iterator;</pre>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308125060" FOLDED="true" ID="ID_444092046" MODIFIED="1352308309779">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3 charset="utf-8" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 0px; text-align: left; word-spacing: 0px; line-height: 25px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(0, 0, 0); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 22px !important; margin-left: 0px">
      <font size="4">Uniform Initialization Syntax </font>
    </h3>
  </body>
</html></richcontent>
<node CREATED="1352308213630" ID="ID_5992359" MODIFIED="1352308218745">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      C++ has at least four different initialization notations, some of which overlap.
    </p>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Parenthesized initialization looks like this:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">std::string s(&quot;hello&quot;);<br />int m=int(); //default initialization</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      You can also use the&#160;<code style="white-space: pre-wrap">=</code>&#160;notation for the same purpose in certain cases:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">std::string s=&quot;hello&quot;;<br />int x=5;</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      For POD aggregates, you use braces:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">int arr[4]={0,1,2,3};<br />struct tm today={0};</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Finally, constructors use member initializers:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">struct S {<br /> int x;<br /> S(): x(0) {} };</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      This proliferation is a fertile source for confusion, not only among novices. Worse yet, in C++03 you can't initialize POD array members and POD arrays allocated using&#160;<code style="white-space: pre-wrap">new[]</code>. C++11 cleans up this mess with a uniform brace notation:
    </p>
    <p>
      
    </p>
    <pre charset="utf-8" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">class C<br />{<br />int a;<br />int b;<br />public:<br /> C(int i, int j);<br />};<br /><br />C c {0,0}; //C++11 only. Equivalent to: C c(0,0);<br /><br />int* a = new int[3] { 1, 2, 0 }; /C++11 only<br /><br />class X {<br />  int a[4];<br />public:<br />  X() : a{1,2,3,4} {} //C++11, member array initializer<br />};</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      With respect to containers, you can say goodbye to a long list of&#160;<code style="white-space: pre-wrap">push_back()</code>&#160;calls. In C++11 you can initialize containers intuitively:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">// C++11 container initializer<br />vector&lt;string&gt; vs={ &quot;first&quot;, &quot;second&quot;, &quot;third&quot;};<br />map singers =<br />  { {&quot;Lady Gaga&quot;, &quot;+1 (212) 555-7890&quot;},<br />    {&quot;Beyonce Knowles&quot;, &quot;+1 (212) 555-0987&quot;}};</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Similarly, C++11 supports in-class initialization of data members:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">class C<br />{<br /> int a=7; //C++11 only<br />public:<br /> C();<br />};</pre>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308277555" FOLDED="true" ID="ID_1822248687" MODIFIED="1352308327028" TEXT="Deleted and Defaulted Functions">
<node CREATED="1352308290578" ID="ID_860842109" MODIFIED="1352308298730">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3 charset="utf-8" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 0px; text-align: left; word-spacing: 0px; line-height: 25px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(0, 0, 0); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 22px !important; margin-left: 0px">
      Deleted and Defaulted Functions
    </h3>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      A function in the form:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">struct A<br />{<br /> A()=default; //C++11<br /> virtual ~A()=default; //C++11<br />};</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      is called a<span class="Apple-converted-space">&#160;</span><em>defaulted function</em>. The<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">=default;</code><span class="Apple-converted-space">&#160;</span>part instructs the compiler to generate the default implementation for the function. Defaulted functions have two advantages: They are more efficient than manual implementations, and they rid the programmer from the chore of defining those functions manually.
    </p>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      The opposite of a defaulted function is a<span class="Apple-converted-space">&#160;</span><em>deleted function</em>:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">int func()=delete;</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Deleted functions are useful for preventing object copying, among the rest. Recall that C++ automatically declares a copy constructor and an assignment operator for classes. To disable copying, declare these two special member functions<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">=delete</code>:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; line-height: 18px; white-space: pre-wrap; background-color: rgb(255, 255, 255)">struct NoCopy<br />{<br />    NoCopy &amp; operator =( const NoCopy &amp; ) = delete;<br />    NoCopy ( const NoCopy &amp; ) = delete;<br />};<br />NoCopy a;<br />NoCopy b(a); //compilation error, copy ctor is deleted</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308335223" FOLDED="true" ID="ID_14495305" MODIFIED="1352308599750" TEXT="nullptr">
<node CREATED="1352308343678" ID="ID_449066969" MODIFIED="1352308349179">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p charset="utf-8" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      At last, C++ has a keyword that designates a null pointer constant.<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">nullptr</code><span class="Apple-converted-space">&#160;</span>replaces the bug-prone<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">NULL</code><span class="Apple-converted-space">&#160;</span>macro and the literal 0 that have been used as null pointer substitutes for many years.<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">nullptr</code>is strongly-typed:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">void f(int); //#1<br />void f(char *);//#2<br />//C++03<br />f(0); //which f is called?<br />//C++11<br />f(nullptr) //unambiguous, calls #2</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      <code style="white-space: pre-wrap">nullptr</code><span class="Apple-converted-space">&#160;</span>is applicable to all pointer categories, including function pointers and pointers to members:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">const char *pc=str.c_str(); //data pointers<br />if (pc!=nullptr)<br />  cout&lt;&lt;pc&lt;&lt;endl;<br />int (A::*pmf)()=nullptr; //pointer to member function<br />void (*pmf)()=nullptr; //pointer to function</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308339407" FOLDED="true" ID="ID_1705145845" MODIFIED="1352308598055" TEXT="Delegating Constructors">
<node CREATED="1352308367749" ID="ID_45825501" MODIFIED="1352308377935">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p charset="utf-8" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      In C++11 a constructor may call another constructor of the same class:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">class M //C++11 delegating constructors<br />{<br /> int x, y;<br /> char *p;<br />public:<br /> M(int v) : x(v), y(0),  p(new char [MAX])  {} //#1 target<br /> M(): M(0) {cout&lt;&lt;&quot;delegating ctor&quot;&lt;&lt;endl;} //#2 delegating<br />};</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Constructor #2, the delegating constructor, invokes the<span class="Apple-converted-space">&#160;</span><em>target constructor</em><span class="Apple-converted-space">&#160;</span>#1.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308397307" FOLDED="true" ID="ID_1091783620" MODIFIED="1352308596031" TEXT="R-value reference">
<node CREATED="1352308402147" ID="ID_720236780" MODIFIED="1352308407266">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p charset="utf-8" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      Reference types in C++03 can only bind to<span class="Apple-converted-space">&#160;</span><a href="http://publib.boulder.ibm.com/infocenter/macxhelp/v6v81/index.jsp?topic=/com.ibm.vacpp6m.doc/language/ref/clrc05lvalue.htm" style="text-decoration: initial; color: rgb(34, 120, 196)"><font color="rgb(34, 120, 196)">lvalues</font></a>. C++11 introduces a new category of reference types called<span class="Apple-converted-space">&#160;</span><em>rvalue references</em>. Rvalue references can bind to rvalues, e.g.<span class="Apple-converted-space">&#160;</span><a href="http://www.informit.com/guides/content.aspx?g=cplusplus&amp;seqNum=198" style="text-decoration: initial; color: rgb(34, 120, 196)"><font color="rgb(34, 120, 196)">temporary objects</font></a><span class="Apple-converted-space">&#160;</span>and literals.
    </p>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      The primary reason for adding rvalue references is<span class="Apple-converted-space">&#160;</span><em>move semantics</em>. Unlike traditional copying, moving means that a target object<span class="Apple-converted-space">&#160;</span><em>pilfers</em><span class="Apple-converted-space">&#160;</span>the resources of the source object, leaving the source in an &quot;empty&quot; state. In certain cases where making a copy of an object is both expensive and unnecessary, a move operation can be used instead. To appreciate the performance gains of move semantics, consider string swapping. A naive implementation would look like this:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">void naiveswap(string &amp;a, string &amp; b)<br />{<br /> string temp = a;<br /> a=b;<br /> b=temp;<br />}</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      This is expensive. Copying a string entails the allocation of raw memory and copying the characters from the source to the target. In contrast, moving strings merely swaps two data members, without allocating memory, copying char arrays and deleting memory:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">void moveswapstr(string&amp; empty, string &amp; filled)<br />{<br />//pseudo code, but you get the idea<br /> size_t sz=empty.size();<br /> const char *p= empty.data();<br />//move filled's resources to empty<br /> empty.setsize(filled.size());<br /> empty.setdata(filled.data());<br />//filled becomes empty<br /> filled.setsize(sz);<br /> filled.setdata(p);<br />}</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      If you're implementing a class that supports moving, you can declare a move constructor and a move assignment operator like this:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">class Movable<br />{<br />Movable (Movable&amp;&amp;); //move constructor<br />Movable&amp;&amp; operator=(Movable&amp;&amp;); //move assignment operator<br />};</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      The C++11 Standard Library uses move semantics extensively. Many algorithms and containers are now move-optimized.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308408994" ID="ID_1612269797" MODIFIED="1352308498479" TEXT="C++11 Standard Library">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="float: none; display: inline !important; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)" charset="utf-8"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">C++ underwent a major facelift in 2003 in the form of the</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><a href="http://www.devsource.com/c/a/Languages/Grok-The-New-Features-in-Standard-C/" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-decoration: initial; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(34, 120, 196); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(34, 120, 196)" face="Arial, Helvetica, sans-serif">Library Technical Report 1</font></a><span class="Apple-converted-space"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">&#160;</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">(TR1). TR1 included new container classes (</span></font><code style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; color: rgb(0, 0, 0); font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)">unordered_set</font></code><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">,</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><code style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; color: rgb(0, 0, 0); font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)">unordered_map</font></code><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">,</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><code style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; color: rgb(0, 0, 0); font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)">unordered_multiset</font></code><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">, and</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><code style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; color: rgb(0, 0, 0); font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)">unordered_multimap</font></code><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">) and several new libraries for regular expressions, tuples, function object wrapper and more. With the approval of C++11, TR1 is officially incorporated into standard C++ standard, along with new libraries that have been added since TR1. Here are some of the C++11 Standard Library features:</font></span>
    </p>
  </body>
</html></richcontent>
<node CREATED="1352308428129" FOLDED="true" ID="ID_711814901" MODIFIED="1352308592855" TEXT="Threading Library">
<node CREATED="1352308482134" ID="ID_858930001" MODIFIED="1352308554932">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="float: none; display: inline !important; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)" charset="utf-8"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">Unquestionably, the most important addition to C++11 from a programmer's perspective is concurrency. C++11 has a thread class that represents an execution thread,</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><a href="http://en.wikipedia.org/wiki/Futures_and_promises" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-decoration: initial; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(34, 120, 196); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(34, 120, 196)" face="Arial, Helvetica, sans-serif">promises and futures</font></a><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">, which are objects that are used for synchronization in a concurrent environment, the</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><a href="http://www.stdthread.co.uk/doc/headers/future/async.html" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-decoration: initial; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(34, 120, 196); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(34, 120, 196)" face="Arial, Helvetica, sans-serif">async()</font></a><span class="Apple-converted-space"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">&#160;</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">function template for launching concurrent tasks, and the</span><span class="Apple-converted-space">&#160;</span></font><a href="http://www.devx.com/cplus/10MinuteSolution/37436" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-decoration: initial; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(34, 120, 196); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(34, 120, 196)" face="Arial, Helvetica, sans-serif">thread_local</font></a><span class="Apple-converted-space"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">&#160;</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">storage type for declaring thread-unique data. For a quick tour of the C++11 threading library, read Anthony Williams'</span><span class="Apple-converted-space">&#160;</span></font><a href="http://www.devx.com/SpecialReports/Article/38883" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-decoration: initial; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(34, 120, 196); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(34, 120, 196)" face="Arial, Helvetica, sans-serif">Simpler Multithreading in C++0x</font></a><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">.</font></span>
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://en.wikipedia.org/wiki/Futures_and_promises
    </p>
    <p>
      http://www.devx.com/SpecialReports/Article/38883
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308465255" FOLDED="true" ID="ID_155088892" MODIFIED="1352308602362" TEXT="New Smart Pointer Class">
<node CREATED="1352308567120" ID="ID_1841620414" MODIFIED="1352308572670">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="float: none; display: inline !important; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)" charset="utf-8"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">C++98 defined only one smart pointer class,</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><code style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; color: rgb(0, 0, 0); font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)">auto_ptr</font></code><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">, which is now deprecated. C++11 includes new smart pointer classes:</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span class="Apple-converted-space">&#160;</span></font><a href="http://www.informit.com/guides/content.aspx?g=cplusplus&amp;seqNum=239" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-decoration: initial; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(34, 120, 196); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(34, 120, 196)" face="Arial, Helvetica, sans-serif">shared_ptr</font></a><span class="Apple-converted-space"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">&#160;</font></span><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif"><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">and the recently-added</span><span class="Apple-converted-space">&#160;</span></font><a href="http://www.informit.com/guides/content.aspx?g=cplusplus&amp;seqNum=400" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-decoration: initial; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(34, 120, 196); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(34, 120, 196)" face="Arial, Helvetica, sans-serif">unique_ptr</font></a><span style="display: inline !important; float: none; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-align: left; text-transform: none; font-style: normal; font-variant: normal; text-indent: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)"><font size="13px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">. Both are compatible with other Standard Library components, so you can safely store these smart pointers in standard containers and manipulate them with standard algorithms.</font></span>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352308472230" FOLDED="true" ID="ID_60814349" MODIFIED="1352308607118" TEXT="New Algorithms">
<node CREATED="1352308573896" ID="ID_1294180089" MODIFIED="1352308588217">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p charset="utf-8" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      The C++11 Standard Library defines new algorithms that mimic the set theory operations<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">all_of()</code>,<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">any_of()</code><span class="Apple-converted-space">&#160;</span>and<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">none_of()</code>. The following listing applies the predicate<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">ispositive()</code><span class="Apple-converted-space">&#160;</span>to the range<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">[first, first+n)</code><span class="Apple-converted-space">&#160;</span>and uses<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">all_of()</code>,<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">any_of()</code><span class="Apple-converted-space">&#160;</span>and<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">none_of()</code><span class="Apple-converted-space">&#160;</span>to examine the range's properties:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">#include &lt;algorithm&gt;<br />//C++11 code<br />//are all of the elements positive?<br />all_of(first, first+n, ispositive()); //false<br />//is there at least one positive element?<br />any_of(first, first+n, ispositive());//true<br />// are none of the elements positive?<br />none_of(first, first+n, ispositive()); //false</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      A new category of<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">copy_n</code><span class="Apple-converted-space">&#160;</span>algorithms is also available. Using<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">copy_n()</code>, copying an array of 5 elements to another array is a cinch:
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">#include<br />int source[5]={0,12,34,50,80};<br />int target[5];<br />//copy 5 elements from source to target<br />copy_n(source,5,target);</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      The algorithm<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">iota()</code><span class="Apple-converted-space">&#160;</span>creates a range of sequentially increasing values, as if by assigning an initial value to<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">*first</code>, then incrementing that value using prefix ++. In the following listing,<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">iota()</code><span class="Apple-converted-space">&#160;</span>assigns the consecutive values {10,11,12,13,14} to the array<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">arr</code>, and {'a', 'b', 'c'} to the char array<span class="Apple-converted-space">&#160;</span><code style="white-space: pre-wrap">c</code>.
    </p>
    <pre style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; font-size: 13px; white-space: pre-wrap; line-height: 18px; background-color: rgb(255, 255, 255)">include &lt;numeric&gt;<br />int a[5]={0};<br />char c[3]={0};<br />iota(a, a+5, 10); //changes a to {10,11,12,13,14}<br />iota(c, c+3, 'a'); //{'a','b','c'}</pre>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      C++11 still lacks a few useful libraries such as an XML API, sockets, GUI, reflection &#8212; and yes, a proper automated garbage collector. However, it does offer plenty of new features that will make C++ more secure, efficient (yes, even more efficient than it has been thus far! See Google's<span class="Apple-converted-space">&#160;</span><a href="http://www.itproportal.com/2011/06/07/googles-rates-c-most-complex-highest-performing-language/" style="text-decoration: initial; color: rgb(34, 120, 196)"><font color="rgb(34, 120, 196)">benchmark tests</font></a>), and easier to learn and use.
    </p>
    <p style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: left; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-indent: 0px; font-size: 13px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255)">
      If the changes in C++11 seem overwhelming, don't be alarmed. Take the time to digest these changes gradually. At the end of this process you will probably agree with Stroustrup: C++11<span class="Apple-converted-space">&#160;</span><em>does</em><span class="Apple-converted-space">&#160;</span>feel like a new language &#8212; a much better one
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1352313795854" FOLDED="true" ID="ID_1549196091" MODIFIED="1352313875665" TEXT="64bit Integers">
<node CREATED="1352313807120" ID="ID_1925570963" MODIFIED="1352313869684">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h2 charset="utf-8" style="padding-left: 0px; font-variant: normal; margin-top: 20px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 10px; text-align: start; word-spacing: 0px; line-height: 24px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; border-bottom-width: 1px; padding-bottom: 5px; letter-spacing: normal; font-size: 20px; margin-left: 0px">
      <font size="4" face="Arial">Unsigned 64-bit integer </font>
    </h2>
    <b style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 13px; margin-left: 0px"><font size="4" color="rgb(48, 48, 48)" face="Arial">Type:</font></b><font size="4" color="rgb(48, 48, 48)" face="Arial">&#160;unsigned long long&#160;<br size="4" align="start" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; word-spacing: 0px; line-height: 20px; padding-right: 0px; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; margin-left: 0px" face="Arial" /></font><b style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 13px; margin-left: 0px"><font size="13px" color="rgb(48, 48, 48)" face="Arial">Formatting for display:&#160;</font></b><font size="4" color="rgb(48, 48, 48)" face="Arial">% llu&#160;<br size="4" align="start" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; word-spacing: 0px; line-height: 20px; padding-right: 0px; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; margin-left: 0px" face="Arial" /></font><b style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 13px; margin-left: 0px"><font size="13px" color="rgb(48, 48, 48)" face="Arial">Suffix to define a constant:</font></b><font size="4" color="rgb(48, 48, 48)" face="Arial">&#160;ULL&#160;</font>

    <p>
      
    </p>
    <p>
      
    </p>
    <h3 charset="utf-8" style="padding-left: 0px; font-variant: normal; margin-top: 20px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 10px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; border-bottom-width: 1px; padding-bottom: 5px; letter-spacing: normal; font-size: 17px; margin-left: 0px">
      <font size="4" face="Arial">Example: </font>
    </h3>
    <pre style="margin-left: 0px; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: start; padding-top: 0px; font-style: normal; padding-left: 0px; margin-top: 0px; font-variant: normal; text-indent: 0px; font-family: Courier New, Courier, mono; color: rgb(50, 67, 84); font-size: 13px; margin-bottom: 0px; padding-bottom: 0px; line-height: 20px; white-space: pre-wrap; padding-right: 0px; margin-right: 0px; background-color: rgb(255, 255, 255)"><font size="4" face="Arial">//Assign the value in a 4294967296     
unsigned long long a= 4294967296ULL;     
//Show the value     
printf ( &quot;% llu&quot;, a);  </font></pre>
    <p>
      
    </p>
    <h2 charset="utf-8" style="padding-left: 0px; font-variant: normal; margin-top: 20px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 10px; text-align: start; word-spacing: 0px; line-height: 24px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; border-bottom-width: 1px; padding-bottom: 5px; letter-spacing: normal; font-size: 20px; margin-left: 0px">
      <font size="4" face="Arial">Signed 64-bit integer </font>
    </h2>
    <b style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 13px; margin-left: 0px"><font size="4" color="rgb(48, 48, 48)" face="Arial">Type:</font></b><font size="4" color="rgb(48, 48, 48)" face="Arial">&#160;long long&#160;<br size="4" align="start" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; word-spacing: 0px; line-height: 20px; padding-right: 0px; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; margin-left: 0px" face="Arial" /></font><b style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 13px; margin-left: 0px"><font size="13px" color="rgb(48, 48, 48)" face="Arial">Formatting for display:&#160;</font></b><font size="4" color="rgb(48, 48, 48)" face="Arial">% lld&#160;<br size="4" align="start" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; word-spacing: 0px; line-height: 20px; padding-right: 0px; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; margin-left: 0px" face="Arial" /></font><b style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 13px; margin-left: 0px"><font size="13px" color="rgb(48, 48, 48)" face="Arial">Suffix to define a constant:&#160;</font></b><font size="4" color="rgb(48, 48, 48)" face="Arial">LL&#160;<br size="4" align="start" style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; margin-bottom: 0px; word-spacing: 0px; line-height: 20px; padding-right: 0px; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; margin-left: 0px" face="Arial" /></font><a style="padding-left: 0px; font-variant: normal; margin-top: 0px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 0px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(52, 135, 188); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; padding-bottom: 0px; letter-spacing: normal; font-size: 13px; text-decoration: underline; margin-left: 0px" name="example"><font size="13px" color="rgb(52, 135, 188)" face="Arial, Helvetica, sans-serif"><u>
</u></font></a>
    <h3 style="padding-left: 0px; font-variant: normal; margin-top: 20px; padding-top: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-bottom: 10px; text-align: start; word-spacing: 0px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; padding-right: 0px; color: rgb(48, 48, 48); font-style: normal; text-transform: none; background-color: rgb(255, 255, 255); white-space: normal; border-bottom-width: 1px; padding-bottom: 5px; letter-spacing: normal; font-size: 17px; margin-left: 0px">
      <font size="4" face="Arial">Example: </font>
    </h3>
    <pre style="margin-left: 0px; font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: start; padding-top: 0px; font-style: normal; padding-left: 0px; margin-top: 0px; font-variant: normal; text-indent: 0px; font-family: Courier New, Courier, mono; color: rgb(50, 67, 84); font-size: 13px; margin-bottom: 0px; padding-bottom: 0px; line-height: 20px; white-space: pre-wrap; padding-right: 0px; margin-right: 0px; background-color: rgb(255, 255, 255)"><font size="4" face="Arial">//Assign the value in a 4294967296     
long long a= 4294967296LL;     
// Show the value     
printf ( &quot;% lld&quot;, a); </font></pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1351278181341" FOLDED="true" ID="ID_202356420" MODIFIED="1353454208453" TEXT="Ruby" VSHIFT="-7">
<node CREATED="1351278183475" ID="ID_1003564930" MODIFIED="1351283937001" TEXT="Rails">
<node CREATED="1351278184908" ID="ID_934603332" MODIFIED="1351278346396" TEXT="Username and Passwords">
<node CREATED="1351278345296" ID="ID_1508338602" LINK="http://www.therailsway.com/2009/8/3/users-and-passwords/" MODIFIED="1351278345296" TEXT="therailsway.com &gt; 2009 &gt; 8 &gt; 3 &gt; Users-and-passwords"/>
</node>
<node CREATED="1351278384878" ID="ID_157295868" MODIFIED="1351278491368" TEXT="TDD">
<font NAME="SansSerif" SIZE="11"/>
<node CREATED="1351278476889" ID="ID_730162921" LINK="http://guides.rubyonrails.org/testing.html" MODIFIED="1351278476889" TEXT="guides.rubyonrails.org &gt; Testing"/>
<node CREATED="1351278488098" FOLDED="true" ID="ID_197205336" LINK="http://andrzejonsoftware.blogspot.ca/2007/05/15-tdd-steps-to-create-rails.html" MODIFIED="1351278800579" TEXT="andrzejonsoftware.blogspot.ca &gt; 2007 &gt; 05 &gt; 15-tdd-steps-to-create-rails">
<node CREATED="1351278784205" ID="ID_419441044" MODIFIED="1351278790732">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3 class="post-title entry-title">
      <a href="http://andrzejonsoftware.blogspot.ca/2007/05/15-tdd-steps-to-create-rails.html">15 TDD steps to create a Rails application</a>
    </h3>
    <div class="post-header-line-1">
      
    </div>
    <div class="post-body entry-content">
      <p>
        <span style="color: #999999"><font color="#999999"><br />
        </font></span><br />
        
      </p>
      <span style="color: #999999"><font color="#999999">Hi,</font></span><br /><span style="color: #999999"><font color="#999999"><br />Testing Rails applications is my passion for over 7 years now. If you sign up to this newsletter you will receive exclusive information about everything related to Ruby unit testing, Rails acceptance testing, JavaScript testing, testable architectures, TDD, BDD and good OO design.&#160;</font></span><br /><br />&#160; <a href="http://eepurl.com/pDilL">Subscribe to the Testing Rails mailing list</a><br /><br /><b>Introduction</b><br /><br />Several times recently, I have been asked how to develop a Rails application using the Test Driven Development approach. I'm not an expert here, but I've put together some notes on how to start working on a Rails application whilst being test-driven all the time.<br />As an example I will use a word-learning web application. The simplest use case is to display a random word object (with its Polish translation) from the database.<br />Every time we refresh we want to see a different word.<br /><br /><b>1. Create a new Rails application</b><br />

      <pre class="code">rails my_app
cd my_app</pre>
      <br />
      Run tests with 'rake test'. It fails due to missing database configuration.<br /><br /><b>2. Set up the databases - config/database.yml</b><br />The code below assumes sqlite3 databases.<br />

      <pre class="code">development:
adapter: sqlite3
database: db/my_app_development.sqlite

test:
adapter: sqlite3
database: db/my_app_test.sqlite</pre>
      <br />
      'rake test' now runs fine.<br /><br /><b>3. Create a Word class with a corresponding unit test</b><br />

      <pre class="code">script/generate model Word</pre>
      <br />
      <b>4. Write a unit test for the Word class. Edit the test/unit/word_test.rb.</b><br />

      <pre class="code">def test_word_is_english_and_polish
word = Word.new :eng=&gt;'never', :pl=&gt;'nigdy'
assert_equal 'never', word.eng
assert_equal 'nigdy', word.pl
end</pre>
      <br />
      'rake test' now fails due to missing words table.<br /><br /><b>5. Edit db/migrate/001_create_words.rb</b><br />We are using a migration here in order to create a table. It's a recommended way of dealing with database changes.<br /><br />

      <pre class="code">def self.up
create_table :words do |t|
t.column :eng, :string
t.column :pl, :string
end

Word.new(:eng=&gt;'yes', :pl=&gt;'tak').save
Word.new(:eng=&gt;'no', :pl=&gt;'nie').save
Word.new(:eng=&gt;'everything', :pl=&gt;'wszystko').save
end

def self.down
drop_table :words
end</pre>
      <br />
      The sample words that we are adding use Word.new .. lines, will be added to the development database. It's important to distinguish the 'test' and 'development' database. The first one is only used during tests. The latter is used by default when you start the application.<br /><br />Apply the migration with 'rake db:migrate'.<br /><br />'rake test' now succeeds with the following:<br />'1 tests, 2 assertions, 0 failures, 0 errors'<br /><br /><br /><b>6. Fixtures and test for word.random. Edit word_test again.</b><br />It's not easy to test a method which behaves randomly. Let's assume that it's enough to test that if we have only two words in our database then one of them should be called at least once per 10 calls.<br />

      <pre class="code">fixtures :words
def test_random
results = []
10.times {results &lt;&lt; Word.random.eng}
assert results.include?(&quot;yes&quot;)
end</pre>
      Note the 'fixtures :words' line. Edit the 'words.yml' file.<br />

      <pre class="code">yes:
id: 1
pl: 'tak'
eng: 'yes'
no:
id: 2
pl: 'nie'
eng: 'no'</pre>
      This will be loaded to the test database before every run of tests. <b>7. Implement the Word.random method</b><br />

      <pre class="code">def self.random
all = Word.find :all
all[rand(all.size)]
end</pre>
      Warning: The code above could be slow for many words in a database (we retrieve all words only for selecting a random element). It's good enough for our needs. <b>8. Generate the Words controller with a 'learn' action</b><br />

      <pre class="code">script/generate controller Words learn</pre>
      <b>9. Write a test for the learn method</b>&#160;Just as there is a one-to-one ratio between unit tests and models, so there is between functional tests and controllers. The Controller's responsibility is to retrieve objects from the Model layer and pass them to the View. Let's test the View part first. We use the 'assigns' collection which contains all the objects passed to the View.<br />

      <pre class="code">def test_learn_passes_a_random_word
get 'learn'
assert_kind_of Word, assigns('word')
end</pre>
      <b>10. Make the Test Pass</b><br />

      <pre class="code">def learn
@word = Word.new
end</pre>
      <b>11. Write more tests in the words_controller_test</b>&#160;How can we test that controller uses the Word.random method? We don't want to duplicate the tests for the Word.random method. Mocks to the rescue! We will only test that the controller calls the Word.random method. The returned value will be faked with a prepared word. Let's install the <a href="http://mocha.rubyforge.org/">mocha</a>&#160; framework:<br />

      <pre class="code">gem install mocha</pre>
      Now we can use 'expects' and 'returns' methods. 'expects' is used for setting an expectation on an object or a class. In this case we expect that the 'random' method will be called. We also set a return value by using 'returns' method. Setting a return value means faking (stubbing) the real method. The real Word.random won't be called. If an expectation isn't met the test fails.<br />

      <pre class="code">require 'mocha'

def test_learn_passes_a_random_word
random_word = Word.new
Word.expects(:random).returns(random_word)
get 'learn'
assert_equal random_word, assigns('word')
end</pre>
      'rake test' now fails. The Word.method wasn't called. <b>12. Rewrite the implementation</b><br />

      <pre class="code">def learn
@word = Word.random
end</pre>
      'rake test' now passes. <b>13. Test that a word is displayed:</b>&#160;Extend the existing test with assert_tag calls.<br />

      <pre class="code">def test_learn_passes_a_random_word
random_word = Word.new(:pl=&gt;'czesc', :eng=&gt;'hello')
Word.expects(:random).returns(random_word)
get 'learn'
assert_equal random_word, assigns('word')
assert_tag :tag=&gt;'div', :child =&gt; /czesc/
assert_tag :tag=&gt;'div', :child =&gt; /hello/
end</pre>
      <b>14. Implement the view - learn.rhtml</b><br />

      <pre class="code">&lt;div&gt;
&lt;%= @word.eng %&gt;
&lt;%= @word.pl %&gt;
&lt;/div&gt;</pre>
      <b>15. Manual testing</b><br />

      <pre class="code">script/server</pre>
      Go to 'http://localhost:3000/words/learn'. Refresh several times. <b>Related articles</b>&#160;<a href="http://andrzejonsoftware.blogspot.com/2007/05/and-some-more-tdd-steps-with-rails.html">... and some more TDD steps with Rails</a>&#160;<a href="http://andrzejonsoftware.blogspot.com/2007/06/testing-rails-controllers-with-mock.html">Testing Rails controllers with mock objects</a>&#160;If you want to read more about testing in Rails go to the <a href="http://manuals.rubyonrails.com/read/book/5">Guide To Testing The Rails</a>.
    </div>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1351282350451" ID="ID_54277823" MODIFIED="1351574581748" TEXT="shorthand">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      single-source shortest paths in a weighted digraph
    </p>
  </body>
</html></richcontent>
<node CREATED="1351282358904" ID="ID_1228202825" MODIFIED="1351282365326">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      a=(a==b)?c:d
    </p>
    <p>
      means:
    </p>
    <p>
      &#160;if a = b then set to c if NOT set to d
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1351287691383" ID="ID_1692091561" MODIFIED="1351287713923" TEXT="Tips">
<node CREATED="1351287693233" ID="ID_1780772322" MODIFIED="1351287708900" TEXT="Use don&apos;t use sudo use rvmsudo"/>
<node CREATED="1351287715128" ID="ID_613102832" MODIFIED="1351287792108" TEXT="use bundler for gems!"/>
</node>
<node CREATED="1351535135668" ID="ID_114786585" MODIFIED="1351535141066" TEXT="Internals">
<node CREATED="1351535141068" ID="ID_1750898395" MODIFIED="1351535150129" TEXT="Ruby under a microscope">
<node CREATED="1351535151393" ID="ID_1649252161" LINK="http://patshaughnessy.net/ruby-under-a-microscope" MODIFIED="1351535151393" TEXT="patshaughnessy.net &gt; Ruby-under-a-microscope"/>
</node>
</node>
<node CREATED="1352234090700" ID="ID_1486893202" MODIFIED="1352234093450" TEXT="Guides">
<node CREATED="1352234094054" ID="ID_1820804629" LINK="http://www.rubyist.net/~slagell/ruby/" MODIFIED="1352234094054" TEXT="rubyist.net &gt; Slagell &gt; Ruby"/>
</node>
</node>
<node CREATED="1351279395857" FOLDED="true" ID="ID_1516480330" MODIFIED="1353454209808" TEXT="Web">
<node CREATED="1351278112680" HGAP="36" ID="ID_295719291" MODIFIED="1351282471080" TEXT="Javascript" VSHIFT="60">
<node CREATED="1351278115954" FOLDED="true" ID="ID_87096795" MODIFIED="1352219020413" TEXT="Fundamentals">
<node CREATED="1351278118797" FOLDED="true" ID="ID_1302969684" MODIFIED="1351282483810" TEXT="Weblinks">
<node CREATED="1351278154057" ID="ID_1307419296" LINK="http://jqfundamentals.com/" MODIFIED="1351278154057" TEXT="jqfundamentals.com"/>
<node CREATED="1351278158249" ID="ID_736489156" LINK="http://jstherightway.com/" MODIFIED="1351278158249" TEXT="jstherightway.com"/>
</node>
<node CREATED="1351279545043" FOLDED="true" ID="ID_974323757" MODIFIED="1351282483081" TEXT="Best Practice">
<node CREATED="1351279547925" ID="ID_337690763" MODIFIED="1351279586986" TEXT="Avoid using eval()">
<node CREATED="1351279588533" ID="ID_129985487" LINK="http://devlicio.us/blogs/sergio_pereira/archive/2009/03/31/javascript-avoid-the-evil-eval.aspx" MODIFIED="1351280919949" TEXT="devlicio.us &gt; Blogs &gt; Sergio pereira &gt; Archive &gt; 2009 &gt; 03 &gt; 31 &gt; Javascript-avoid-the-evil-eval"/>
</node>
</node>
<node CREATED="1351278621442" ID="ID_1631051646" MODIFIED="1351283650077" TEXT="Function Comprehension">
<node CREATED="1351278633530" ID="ID_1778445280" MODIFIED="1351278636222" TEXT="Weblinks">
<node CREATED="1351278628270" ID="ID_1744942155" LINK="http://ejohn.org/apps/learn/" MODIFIED="1351278628270" TEXT="ejohn.org &gt; Apps &gt; Learn"/>
</node>
<node CREATED="1351279843485" ID="ID_331908502" MODIFIED="1351279851873" TEXT="5 Ways to call a function">
<node CREATED="1351279853235" ID="ID_1406637907" LINK="http://devlicio.us/blogs/sergio_pereira/archive/2009/02/09/javascript-5-ways-to-call-a-function.aspx" MODIFIED="1351279853235" TEXT="devlicio.us &gt; Blogs &gt; Sergio pereira &gt; Archive &gt; 2009 &gt; 02 &gt; 09 &gt; Javascript-5-ways-to-call-a-function"/>
</node>
</node>
<node CREATED="1351279435690" FOLDED="true" ID="ID_1805283487" MODIFIED="1351282481370" TEXT="Object Oriented Javascript">
<node CREATED="1351279442536" ID="ID_1262336879" LINK="https://developer.mozilla.org/en-US/docs/JavaScript/Introduction_to_Object-Oriented_JavaScript" MODIFIED="1351279442536" TEXT="https://developer.mozilla.org/en-US/docs/JavaScript/Introduction_to_Object-Oriented_JavaScript"/>
<node CREATED="1351279891299" ID="ID_192673215" MODIFIED="1351279901164" TEXT="Inheritance Model">
<node CREATED="1351279902673" ID="ID_989337343" LINK="http://devlicio.us/blogs/sergio_pereira/archive/2009/06/12/javascript-not-your-father-s-inheritance-model-part-1.aspx" MODIFIED="1351279902673" TEXT="devlicio.us &gt; Blogs &gt; Sergio pereira &gt; Archive &gt; 2009 &gt; 06 &gt; 12 &gt; Javascript-not-your-father-s-inheritance-model-part-1"/>
<node CREATED="1351279919972" ID="ID_1766975491" LINK="http://devlicio.us/blogs/sergio_pereira/archive/2009/06/12/javascript-not-your-father-s-inheritance-model-part-2.aspx" MODIFIED="1351279919972" TEXT="devlicio.us &gt; Blogs &gt; Sergio pereira &gt; Archive &gt; 2009 &gt; 06 &gt; 12 &gt; Javascript-not-your-father-s-inheritance-model-part-2"/>
</node>
</node>
<node CREATED="1351279501444" FOLDED="true" ID="ID_1685038333" MODIFIED="1351282480809" TEXT="Arguments.callee">
<node CREATED="1351279539549" ID="ID_1842068761" LINK="http://devlicio.us/blogs/sergio_pereira/archive/2010/09/10/have-you-met-arguments-callee.aspx" MODIFIED="1351280881483" TEXT="devlicio.us &gt; Blogs &gt; Sergio pereira &gt; Archive &gt; 2010 &gt; 09 &gt; 10 &gt; Have-you-met-arguments-callee"/>
</node>
<node CREATED="1351279634679" FOLDED="true" ID="ID_755636576" MODIFIED="1351282480337" TEXT="Inner Functions, Private Members and Closure">
<node CREATED="1351279651444" ID="ID_758360543" LINK="http://devlicio.us/blogs/sergio_pereira/archive/2009/02/24/javascript-inner-functions-and-private-members.aspx" MODIFIED="1351279651444" TEXT="devlicio.us &gt; Blogs &gt; Sergio pereira &gt; Archive &gt; 2009 &gt; 02 &gt; 24 &gt; Javascript-inner-functions-and-private-members"/>
</node>
</node>
<node CREATED="1351279716274" ID="ID_1365193232" MODIFIED="1351281553533" TEXT="Frameworks/Libraries/Toolkits">
<node CREATED="1351279753944" ID="ID_812813622" MODIFIED="1351295396805" TEXT="Interactive/Media/Graphics">
<node CREATED="1351280686837" ID="ID_277834247" MODIFIED="1351280691358" TEXT="CreateJS">
<node CREATED="1351280691911" ID="ID_1296028125" LINK="http://createjs.com/#!/CreateJS" MODIFIED="1351280691911" TEXT="createjs.com &gt; #! &gt; CreateJS"/>
</node>
<node CREATED="1351281635344" ID="ID_1300820191" MODIFIED="1351281639650" TEXT="Paper.js">
<node CREATED="1351281640005" ID="ID_1178105967" LINK="http://paperjs.org/" MODIFIED="1351281640005" TEXT="paperjs.org"/>
</node>
<node CREATED="1351281644377" ID="ID_323841747" MODIFIED="1351281646203" TEXT="Video">
<node CREATED="1351281101483" ID="ID_1948637093" MODIFIED="1351281649309" TEXT="Popcorn.js">
<node CREATED="1351281106211" ID="ID_1698266739" LINK="http://popcornjs.org/" MODIFIED="1351281106211" TEXT="popcornjs.org"/>
</node>
<node CREATED="1351281271259" ID="ID_438515875" MODIFIED="1351281650083" TEXT="BigVideo.js">
<node CREATED="1351281275905" ID="ID_1222501857" LINK="http://dfcb.github.com/BigVideo.js/" MODIFIED="1351281275905" TEXT="dfcb.github.com &gt; BigVideo.js"/>
</node>
<node CREATED="1351281356880" ID="ID_298521917" MODIFIED="1351281361065" TEXT="Video.js">
<node CREATED="1351281361670" ID="ID_1825195981" LINK="http://videojs.com/" MODIFIED="1351281361670" TEXT="videojs.com"/>
</node>
<node CREATED="1351281570358" ID="ID_1141762289" MODIFIED="1351295396854" TEXT="Tubular">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Play Youtube as background image/video
    </p>
  </body>
</html></richcontent>
<node CREATED="1351281573698" ID="ID_1796796777" LINK="http://www.seanmccambridge.com/tubular/" MODIFIED="1351281573698" TEXT="seanmccambridge.com &gt; Tubular"/>
</node>
</node>
<node CREATED="1351281660940" ID="ID_1343097817" MODIFIED="1351281662021" TEXT="Images">
<node CREATED="1351281385780" FOLDED="true" ID="ID_646844002" MODIFIED="1351792926721" TEXT="Caman.js">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Canvans Image Manipulation
    </p>
  </body>
</html></richcontent>
<node CREATED="1351281391021" ID="ID_1691134539" MODIFIED="1351281392923" TEXT="http://www.camanjs.com/"/>
</node>
<node CREATED="1351281593066" FOLDED="true" ID="ID_1939696562" MODIFIED="1351792923414" TEXT="Pixastic">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Javascript Image Library
    </p>
  </body>
</html></richcontent>
<node CREATED="1351281601240" ID="ID_1976232530" LINK="http://www.pixastic.com/" MODIFIED="1351281601240" TEXT="pixastic.com"/>
</node>
<node CREATED="1351281371666" ID="ID_751787552" MODIFIED="1351281375788" TEXT="tiltshift.js">
<node CREATED="1351281376250" ID="ID_1272528912" MODIFIED="1351281377462" TEXT="http://www.noeltock.com/tilt-shift-css3-jquery-plugin/"/>
</node>
</node>
<node CREATED="1351281689288" ID="ID_579430814" MODIFIED="1351281692292" TEXT="Animation">
<node CREATED="1351279770997" ID="ID_996776300" MODIFIED="1351279773621" TEXT="CAAT">
<node CREATED="1351279774718" ID="ID_1476747119" LINK="http://labs.hyperandroid.com/static/caat/" MODIFIED="1351279774718" TEXT="labs.hyperandroid.com &gt; Static &gt; Caat"/>
</node>
<node CREATED="1352219023324" ID="ID_591576663" MODIFIED="1352219027233" TEXT="Bonsai.js">
<node CREATED="1352219027608" ID="ID_692079627" LINK="http://bonsaijs.org/" MODIFIED="1352219027608" TEXT="bonsaijs.org"/>
</node>
</node>
<node CREATED="1351281709507" ID="ID_1937177599" MODIFIED="1351281714367" TEXT="Typography">
<node CREATED="1351281042979" ID="ID_1722445221" MODIFIED="1351281061991" TEXT="Tangle">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Reactive Documents
    </p>
  </body>
</html></richcontent>
<node CREATED="1351281054508" ID="ID_446681400" LINK="http://worrydream.com/Tangle/" MODIFIED="1351281054508" TEXT="worrydream.com &gt; Tangle"/>
</node>
<node CREATED="1351281322451" ID="ID_1878588202" MODIFIED="1351281326044" TEXT="Lettering.js">
<node CREATED="1351281326528" ID="ID_470228050" LINK="http://letteringjs.com/" MODIFIED="1351281326528" TEXT="letteringjs.com"/>
</node>
</node>
<node CREATED="1351281724389" ID="ID_902877103" MODIFIED="1351281729463" TEXT="3D">
<node CREATED="1351279812496" ID="ID_501165544" MODIFIED="1351279816109" TEXT="Three.js">
<node CREATED="1351279816845" ID="ID_595545853" LINK="http://mrdoob.github.com/three.js/" MODIFIED="1351279816845" TEXT="mrdoob.github.com &gt; Three.js"/>
</node>
</node>
<node CREATED="1353019349198" ID="ID_1226748947" MODIFIED="1353019353533" TEXT="Physics">
<node CREATED="1353019357957" ID="ID_1371466544" MODIFIED="1353019360334" TEXT="Box2d">
<node CREATED="1353019360925" ID="ID_534914681" MODIFIED="1353019360925" TEXT="box2dweb - Box2DFlash port to javascript - Google Project Hosting"/>
</node>
</node>
</node>
<node CREATED="1351280718442" FOLDED="true" ID="ID_803285587" MODIFIED="1351282474768" TEXT="Serverside">
<node CREATED="1351280721015" ID="ID_1343427381" MODIFIED="1351280737047" TEXT="Node.js">
<node CREATED="1351280737528" ID="ID_1358182677" LINK="http://nodejs.org/" MODIFIED="1351280737528" TEXT="nodejs.org"/>
</node>
</node>
<node CREATED="1351280752329" FOLDED="true" ID="ID_1312297082" MODIFIED="1351282473626" TEXT="General Libraries/Toolkits">
<node CREATED="1351280818952" ID="ID_895521974" MODIFIED="1351280923114" TEXT="Underscore.js">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(0, 0, 0)" face="Helvetica Neue, Helvetica, Arial">&#160;</font><font color="rgb(0, 0, 0)" size="14px" face="Helvetica Neue, Helvetica, Arial">functional programming support for Javascript </font>
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node CREATED="1351280822629" ID="ID_431514169" LINK="http://underscorejs.org/" MODIFIED="1351280822629" TEXT="underscorejs.org"/>
</node>
<node CREATED="1351280831372" FOLDED="true" ID="ID_851759265" MODIFIED="1351280886261" TEXT="Require.js">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      File and module loader
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node CREATED="1351280834926" ID="ID_1877623007" LINK="http://requirejs.org/" MODIFIED="1351280834926" TEXT="requirejs.org"/>
</node>
<node CREATED="1351281075991" ID="ID_1412218636" MODIFIED="1351281080512" TEXT="Mootools">
<node CREATED="1351281081476" ID="ID_1913649571" LINK="http://mootools.net/" MODIFIED="1351281081476" TEXT="mootools.net"/>
</node>
<node CREATED="1351281190864" ID="ID_1217483684" MODIFIED="1351281196331" TEXT="Zepto.js">
<node CREATED="1351281196758" ID="ID_1458555059" LINK="http://zeptojs.com/" MODIFIED="1351281196758" TEXT="zeptojs.com"/>
</node>
<node CREATED="1351281230454" ID="ID_1687796829" MODIFIED="1351281233822" TEXT="OxJS">
<node CREATED="1351281234121" ID="ID_404634770" LINK="https://oxjs.org" MODIFIED="1351281234121" TEXT="https://oxjs.org"/>
</node>
<node CREATED="1351281337733" ID="ID_114149959" MODIFIED="1351281355605" TEXT="Strapdown">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Markdown for Javascript
    </p>
  </body>
</html></richcontent>
<node CREATED="1351281341274" ID="ID_500003299" LINK="http://strapdownjs.com/" MODIFIED="1351281341274" TEXT="strapdownjs.com"/>
</node>
<node CREATED="1351281620910" ID="ID_430959957" MODIFIED="1351281624383" TEXT="Closure Tools">
<node CREATED="1351281624819" ID="ID_1300354560" LINK="https://developers.google.com/closure/library/" MODIFIED="1351281624819" TEXT="https://developers.google.com/closure/library/"/>
</node>
<node CREATED="1351281782829" ID="ID_481345808" MODIFIED="1351281793223" TEXT="Connect">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      MIddleware for Node.js
    </p>
  </body>
</html></richcontent>
<node CREATED="1351281786115" ID="ID_1186618573" LINK="http://www.senchalabs.org/connect/" MODIFIED="1351281786115" TEXT="senchalabs.org &gt; Connect"/>
</node>
<node CREATED="1351281903430" ID="ID_261097144" MODIFIED="1351281920558" TEXT="now.js">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Toolkit to make realtime apps
    </p>
  </body>
</html></richcontent>
<node CREATED="1351281908156" ID="ID_274766" LINK="http://nowjs.com/" MODIFIED="1351281908156" TEXT="nowjs.com"/>
</node>
</node>
<node CREATED="1351280936796" FOLDED="true" ID="ID_514291747" MODIFIED="1351282476761" TEXT="UI">
<node CREATED="1351280943205" ID="ID_1603271109" MODIFIED="1351280977769" TEXT="Backpack.js">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      UI for Backbone.js
    </p>
  </body>
</html></richcontent>
<node CREATED="1351280950627" ID="ID_1783771362" MODIFIED="1351280955156" TEXT="http://airbnb.github.com/backpack.js/"/>
</node>
<node CREATED="1351281532841" ID="ID_326935787" MODIFIED="1351281536985" TEXT="JqueryUI">
<node CREATED="1351281537422" ID="ID_1589179271" LINK="http://jqueryui.com/" MODIFIED="1351281537422" TEXT="jqueryui.com"/>
</node>
</node>
<node CREATED="1351280981170" FOLDED="true" ID="ID_1395034031" MODIFIED="1351282477329" TEXT="Web Frameworks">
<node CREATED="1351280988419" FOLDED="true" ID="ID_1710348195" MODIFIED="1351281002702" TEXT="Backbone.js">
<node CREATED="1351280992629" ID="ID_439857572" LINK="http://backbonejs.org/" MODIFIED="1351280992629" TEXT="backbonejs.org"/>
</node>
<node CREATED="1351281089786" ID="ID_154101564" MODIFIED="1351281510886" TEXT="Prototype">
<node CREATED="1351281093538" ID="ID_232370991" LINK="http://prototypejs.org/" MODIFIED="1351281093538" TEXT="prototypejs.org"/>
</node>
<node CREATED="1351281121633" ID="ID_1295244076" MODIFIED="1351281127056" TEXT="Angular.js">
<node CREATED="1351281145800" ID="ID_238130311" LINK="http://angularjs.org/" MODIFIED="1351281145800" TEXT="angularjs.org"/>
</node>
<node CREATED="1351281518407" ID="ID_381245094" MODIFIED="1351281520671" TEXT="Express.js">
<node CREATED="1351281521130" ID="ID_1611910219" LINK="http://expressjs.com/" MODIFIED="1351281521130" TEXT="expressjs.com"/>
</node>
</node>
<node CREATED="1351281497924" FOLDED="true" ID="ID_1013956795" MODIFIED="1351282477873" TEXT="Testing">
<node CREATED="1351281499604" ID="ID_712244950" MODIFIED="1351281505652" TEXT="Zombie.js">
<node CREATED="1351281505992" ID="ID_820506431" LINK="http://zombie.labnotes.org/" MODIFIED="1351281505992" TEXT="zombie.labnotes.org"/>
</node>
<node CREATED="1351281824883" ID="ID_1277736821" MODIFIED="1351281827821" TEXT="Jasmine">
<node CREATED="1351281828280" ID="ID_1755502339" LINK="http://pivotal.github.com/jasmine/" MODIFIED="1351281828280" TEXT="pivotal.github.com &gt; Jasmine"/>
</node>
<node CREATED="1351281841605" ID="ID_1330964775" MODIFIED="1351281844840" TEXT="Phantom.js">
<node CREATED="1351281845210" ID="ID_1850951615" LINK="http://phantomjs.org/" MODIFIED="1351281845210" TEXT="phantomjs.org"/>
</node>
</node>
<node CREATED="1351281553908" FOLDED="true" ID="ID_379005937" MODIFIED="1351282478281" TEXT="TypeScript">
<node CREATED="1351281559543" ID="ID_556342028" LINK="http://www.typescriptlang.org/" MODIFIED="1351281559543" TEXT="typescriptlang.org"/>
</node>
</node>
</node>
<node CREATED="1351278855938" HGAP="37" ID="ID_1995135316" MODIFIED="1353096401856" TEXT="HTML/CSS" VSHIFT="182">
<node CREATED="1351280172243" FOLDED="true" ID="ID_1168190061" MODIFIED="1351282490091" TEXT="Frameworks/Libraries/Toolkits">
<node CREATED="1351280193495" ID="ID_576334623" MODIFIED="1351282489052" TEXT="Compass">
<node CREATED="1351280196291" ID="ID_1593106281" LINK="http://compass-style.org/" MODIFIED="1351280196291" TEXT="compass-style.org"/>
</node>
</node>
<node CREATED="1351280203656" FOLDED="true" ID="ID_1557990883" MODIFIED="1351282494804" TEXT="Fundamentals">
<node CREATED="1351279089905" ID="ID_1254577131" MODIFIED="1351279095445" TEXT="Full CSS Background">
<node CREATED="1351279098137" ID="ID_300099315" LINK="http://css-tricks.com/perfect-full-page-background-image/" MODIFIED="1351279098137" TEXT="css-tricks.com &gt; Perfect-full-page-background-image"/>
</node>
<node CREATED="1351279136432" ID="ID_1230327990" MODIFIED="1351279143752" TEXT="Multiple Background and Border">
<node CREATED="1351279145072" ID="ID_265767389" LINK="http://nicolasgallagher.com/multiple-backgrounds-and-borders-with-css2/" MODIFIED="1351279145072" TEXT="nicolasgallagher.com &gt; Multiple-backgrounds-and-borders-with-css2"/>
</node>
<node CREATED="1351279176213" ID="ID_1176204281" MODIFIED="1351279203948" TEXT="Selectors">
<node CREATED="1351279203948" ID="ID_988745667" MODIFIED="1351279210213" TEXT="psuedo-classes">
<node CREATED="1351279353959" ID="ID_1915741830" MODIFIED="1351279361637" TEXT="nth-child">
<node CREATED="1351279237827" FOLDED="true" ID="ID_1334108549" LINK="https://developer.mozilla.org/en-US/docs/CSS/:nth-child" MODIFIED="1351279367526" TEXT="https://developer.mozilla.org/en-US/docs/CSS/:nth-child">
<node CREATED="1351279242958" ID="ID_841312468" MODIFIED="1351279347475">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)" charset="utf-8">
      SUMMARY
    </p>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)" charset="utf-8">
      
    </p>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)" charset="utf-8">
      The<span class="Apple-converted-space">&#160;</span><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal"><font size="14px" face="Courier New, Andale Mono, monospace">:nth-child</font></code><span class="Apple-converted-space">&#160;</span><a style="text-decoration: none; color: rgb(102, 153, 204)" title="/en-US/docs/CSS" href="https://developer.mozilla.org/en-US/docs/CSS"><font color="rgb(102, 153, 204)">CSS</font></a><span class="Apple-converted-space">&#160;</span><a style="text-decoration: none; color: rgb(102, 153, 204)" title="Pseudo-classes" href="https://developer.mozilla.org/en/CSS/Pseudo-classes"><font color="rgb(102, 153, 204)">pseudo-class</font></a><span class="Apple-converted-space">&#160;</span>matches an element that has<span class="Apple-converted-space">&#160;</span><em><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal"><font size="14px" face="Courier New, Andale Mono, monospace">a</font></code></em><font size="14px" face="Courier New, Andale Mono, monospace"><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal">n+<em>b</em>-1</code></font><span class="Apple-converted-space">&#160;</span>siblings before it in the document tree, for a given positive or zero value for<span class="Apple-converted-space">&#160;</span><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal"><font size="14px" face="Courier New, Andale Mono, monospace">n</font></code>, and has a parent element.
    </p>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      This can more clearly be described this way: the matching element is the<span class="Apple-converted-space">&#160;</span><em><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal"><font size="14px" face="Courier New, Andale Mono, monospace">b</font></code></em><font size="14px" face="Courier New, Andale Mono, monospace"><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal">th</code></font><span class="Apple-converted-space">&#160;</span>child of an element after all its children have been split into groups of<span class="Apple-converted-space">&#160;</span><em><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal"><font size="14px" face="Courier New, Andale Mono, monospace">a</font></code></em><span class="Apple-converted-space">&#160;</span>elements each.
    </p>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      The values<span class="Apple-converted-space">&#160;</span><em><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal"><font size="14px" face="Courier New, Andale Mono, monospace">a</font></code></em><span class="Apple-converted-space">&#160;</span>and<span class="Apple-converted-space">&#160;</span><em><code style="font-weight: normal; line-height: normal; font-family: Courier New, Andale Mono, monospace; font-style: normal; font-size: 14px; font-variant: normal"><font size="14px" face="Courier New, Andale Mono, monospace">b</font></code></em><span class="Apple-converted-space">&#160;</span>must both be integers, and the index of an element's first child is 1.
    </p>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      Among other things, this allows selectors to match every other row in a table.
    </p>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      
    </p>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      SYNTAX
    </p>
    <pre style="font-size: 14px; margin-left: 0px; margin-bottom: 0; background-repeat: repeat; font-variant: normal; text-transform: none; line-height: normal; margin-right: 0px; border: 1px dotted rgb(203, 200, 185); text-align: start; padding-left: 15px; background-position: initial initial; letter-spacing: normal; font-weight: normal; padding-top: 15px; padding-right: 15px; text-indent: 0px; background-color: rgb(246, 246, 242); margin-top: 0px; word-spacing: 0px; padding-bottom: 15px; font-style: normal; font-family: Courier New, Andale Mono, monospace; color: rgb(51, 51, 51)" charset="utf-8" class="eval">element:nth-child(<em>a</em>n + <em>b</em>) { <em>style properties</em> }</pre>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      
    </p>
    <h3 name="Example_selectors" id="Example_selectors" style="padding-top: 0px; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; font-family: Georgia, Times, Times New Roman, serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 1.428em; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)" charset="utf-8">
      Example selectors
    </h3>
    <dl style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 22px; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      <dt style="margin-left: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; font-weight: bold; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0px; padding-top: 0px; font-style: normal">
        <code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><font size="14px" face="Courier New, Andale Mono, monospace">tr:nth-child(2n+1)</font></code>
      </dt>
      <dd style="margin-left: 0; padding-left: 15px; margin-top: 0; margin-right: 0; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0; padding-top: 0px">
        Represents the odd rows of an HTML table.
      </dd>
      <dt style="margin-left: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; font-weight: bold; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0px; padding-top: 0px; font-style: normal">
        <code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><font size="14px" face="Courier New, Andale Mono, monospace">tr:nth-child(odd)</font></code>
      </dt>
      <dd style="margin-left: 0; padding-left: 15px; margin-top: 0; margin-right: 0; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0; padding-top: 0px">
        Represents the odd rows of an HTML table.
      </dd>
      <dt style="margin-left: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; font-weight: bold; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0px; padding-top: 0px; font-style: normal">
        <code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><font size="14px" face="Courier New, Andale Mono, monospace">tr:nth-child(2n)</font></code>
      </dt>
      <dd style="margin-left: 0; padding-left: 15px; margin-top: 0; margin-right: 0; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0; padding-top: 0px">
        Represents the even rows of an HTML table.
      </dd>
      <dt style="margin-left: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; font-weight: bold; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0px; padding-top: 0px; font-style: normal">
        <code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><font size="14px" face="Courier New, Andale Mono, monospace">tr:nth-child(even)</font></code>
      </dt>
      <dd style="margin-left: 0; padding-left: 15px; margin-top: 0; margin-right: 0; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0; padding-top: 0px">
        Represents the even rows of an HTML table.
      </dd>
      <dt style="margin-left: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; font-weight: bold; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0px; padding-top: 0px; font-style: normal">
        <code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><font size="14px" face="Courier New, Andale Mono, monospace">span:nth-child(0n+1)</font></code>
      </dt>
      <dd style="margin-left: 0; padding-left: 15px; margin-top: 0; margin-right: 0; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0; padding-top: 0px">
        Represents a span element which is the first child of its parent; this is the same as the<span class="Apple-converted-space">&#160;</span><code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><a style="color: rgb(102, 153, 204); text-decoration: none" href="https://developer.mozilla.org/en-US/docs/CSS/:first-child"><font size="14px" color="rgb(102, 153, 204)" face="Courier New, Andale Mono, monospace">:first-child</font></a></code><span class="Apple-converted-space">&#160;</span>selector.
      </dd>
      <dt style="margin-left: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; font-weight: bold; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0px; padding-top: 0px; font-style: normal">
        <code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><font size="14px" face="Courier New, Andale Mono, monospace">span:nth-child(1)</font></code>
      </dt>
      <dd style="margin-left: 0; padding-left: 15px; margin-top: 0; margin-right: 0; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0; padding-top: 0px">
        Equivalent to the above.
      </dd>
    </dl>
    <dl style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 22px; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      <dt style="margin-left: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; font-weight: bold; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0px; padding-top: 0px; font-style: normal">
        <code style="font-size: 14px; font-variant: normal; line-height: normal; font-weight: normal; font-style: normal; font-family: Courier New, Andale Mono, monospace"><font size="14px" face="Courier New, Andale Mono, monospace">span:nth-child(-n+3)</font></code>
      </dt>
      <dd style="margin-left: 0; padding-left: 15px; margin-top: 0; margin-right: 0; padding-bottom: 0px; padding-right: 0px; margin-bottom: 0; padding-top: 0px">
        Three first span elements.
      </dd>
    </dl>
    <p style="padding-top: 0px; font-weight: normal; text-align: start; text-indent: 0px; margin-top: 0px; padding-left: 0px; line-height: 1.5em; font-family: Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida, Arial, Helvetica, sans-serif; padding-bottom: 0px; white-space: normal; margin-right: 0px; margin-bottom: 0; font-size: 14px; font-style: normal; font-variant: normal; padding-right: 0px; word-spacing: 0px; margin-left: 0px; text-transform: none; letter-spacing: normal; color: rgb(51, 51, 51)">
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1351279988937" ID="ID_245327922" MODIFIED="1351280421175" TEXT="Full Width Bars">
<node CREATED="1351279998271" ID="ID_1931774240" LINK="http://css-tricks.com/full-browser-width-bars/" MODIFIED="1351279998271" TEXT="css-tricks.com &gt; Full-browser-width-bars"/>
</node>
<node CREATED="1351280025663" ID="ID_102232594" MODIFIED="1351280229758" TEXT="Colors Reference">
<node CREATED="1351280146180" ID="ID_1311383914" LINK="http://www.somacon.com/p142.php" MODIFIED="1351280146180" TEXT="somacon.com &gt; P142"/>
</node>
<node CREATED="1351280410049" ID="ID_1993989457" MODIFIED="1351280499346" TEXT="Box Model">
<node CREATED="1351280468260" ID="ID_1403310258" LINK="https://developer.mozilla.org/en-US/docs/CSS/box_model" MODIFIED="1351280495967" TEXT="https://developer.mozilla.org/en-US/docs/CSS/box_model"/>
</node>
<node CREATED="1351280535006" ID="ID_1210292758" MODIFIED="1351280536994" TEXT="Position">
<node CREATED="1351280537645" ID="ID_1388491787" LINK="https://developer.mozilla.org/en-US/docs/CSS/position" MODIFIED="1351280537645" TEXT="https://developer.mozilla.org/en-US/docs/CSS/position"/>
</node>
</node>
<node CREATED="1351280552818" FOLDED="true" ID="ID_1163015528" MODIFIED="1351282495492" TEXT="Examples">
<node CREATED="1351280555041" ID="ID_766114502" MODIFIED="1351280560529" TEXT="Pure CSS Iphone 4">
<node CREATED="1351280562030" ID="ID_490036195" LINK="http://blog.romanliutikov.com/coding/iphone-4-in-pure-css3/" MODIFIED="1351280562030" TEXT="blog.romanliutikov.com &gt; Coding &gt; Iphone-4-in-pure-css3"/>
<node CREATED="1351280576928" ID="ID_895629450" LINK="http://codepen.io/dylnhdsn/pen/iphone" MODIFIED="1351280576928" TEXT="codepen.io &gt; Dylnhdsn &gt; Pen &gt; Iphone"/>
</node>
</node>
<node CREATED="1351526340547" ID="ID_1429599515" MODIFIED="1353094770681" TEXT="Tutorials/Links">
<node CREATED="1351526352525" ID="ID_96646591" MODIFIED="1351526361463" TEXT="CSSdeck Codecasts">
<node CREATED="1351526350371" ID="ID_1729934041" LINK="http://cssdeck.com/codecasts" MODIFIED="1351526350371" TEXT="cssdeck.com &gt; Codecasts"/>
</node>
</node>
<node CREATED="1353096404441" ID="ID_1264446939" MODIFIED="1353096406794" TEXT="Security">
<node CREATED="1353096407153" ID="ID_1267094179" MODIFIED="1353096409434" TEXT="Cheatsheet">
<node CREATED="1353096409824" ID="ID_832714695" LINK="http://html5sec.org/" MODIFIED="1353096409824" TEXT="html5sec.org"/>
</node>
</node>
</node>
<node CREATED="1351630036283" ID="ID_896911237" MODIFIED="1353094745787" TEXT="DOM">
<node CREATED="1351630039366" ID="ID_1333304068" MODIFIED="1351630041318" TEXT="Events">
<node CREATED="1351630192032" ID="ID_1905676902" LINK="https://en.wikipedia.org/wiki/DOM_events" MODIFIED="1351630192032" TEXT="https://en.wikipedia.org/wiki/DOM_events"/>
</node>
<node CREATED="1353094751813" ID="ID_1395390075" MODIFIED="1353094753557" TEXT="Links">
<node CREATED="1353094758737" ID="ID_1727627389" MODIFIED="1353094763082" TEXT="Dom Enlightenment">
<node CREATED="1353094763655" ID="ID_933334187" LINK="http://domenlightenment.com/" MODIFIED="1353094763655" TEXT="domenlightenment.com"/>
</node>
</node>
</node>
<node CREATED="1351889075414" FOLDED="true" ID="ID_480244261" MODIFIED="1353094778947" TEXT="Microformats">
<node CREATED="1351889085653" ID="ID_247382745" LINK="http://microformats.org/wiki/Main_Page" MODIFIED="1351889085653" TEXT="microformats.org &gt; Wiki &gt; Main Page"/>
</node>
<node CREATED="1352336874311" ID="ID_505003770" MODIFIED="1353094784599" TEXT="Guides">
<node CREATED="1352336878447" ID="ID_221465757" MODIFIED="1352336893423" TEXT="Form based website authentication">
<node CREATED="1352336934908" FOLDED="true" ID="ID_1772399775" MODIFIED="1352337176525" TEXT="Best practice for cookies">
<node CREATED="1352336994160" FOLDED="true" ID="ID_1706036785" MODIFIED="1352337062676">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div id="entry-1291" class="entry-asset asset hentry">
      <div class="asset-header">
        <h1 id="page-title" class="asset-name entry-title">
          Persistent Login Cookie Best Practice
        </h1>
        <p class="published">
          January 19, 2004 11:52 PM
        </p>
      </div>
      <div class="asset-content entry-content">
        <div class="asset-body">
          <p>
            Persistent login cookies are the cookies that are stored with your browser when you click the &quot;remember me&quot; button on the login form. I would like to be able to say that such cookies are obselete, and <a href="http://fishbowl.pastiche.org/2003/12/30/saving_http_authentication">we have a better way of handling user logins</a>, but they aren't, and we don't.
          </p>
          <p>
            The following recipe for persistent cookies requires no crypto more powerful than a good random number generator.
          </p>
          <p>
            <strong>Premises</strong>
          </p>
          <ol>
            <li>
              Cookies are vulnerable. Between common browser cookie-theft vulnerabilities and cross-site scripting attacks, we must accept that cookies are not safe
            </li>
            <li>
              Persistent login cookies are on their own sufficient authentication to access a website. They are the equivalent of both a valid username and password rolled into one
            </li>
            <li>
              Users reuse passwords. Hence, any login cookie from which you can recover the user's password holds significantly more potential for harm than one from which you can not
            </li>
            <li>
              Binding persistent cookies to a particular IP address makes them not particularly persistent in many common cases
            </li>
            <li>
              A user may wish to have persistent cookies on multiple web browsers on different machines simultaneously
            </li>
          </ol>
          <p>
            <strong>Charles' Recipe</strong>
          </p>
          <p>
            The cookie should consist of the user's username, followed by a separator character, followed by some large random number (128 bits seems mind-bogglingly large enough to be acceptable). The server keeps a table of number-&gt;username associations, which is looked up to verify the validity of the cookie. If the cookie supplies a random number and username that are mapped to each other in the table, the login is accepted.
          </p>
          <p>
            At any time, a username may be mapped to several such numbers. Also, while incredibly unlikely, it does not matter if two usernames are mapped to the same random number.
          </p>
          <p>
            A persistent cookie is good for a single login. When authentication is confirmed, the random number used to log in is invalidated and a brand new cookie assigned. Standard session-management handles the credentials for the life of the session, so the newly assigned cookie will not be checked until the <em>next</em>&#160;session (at which point it, too, will be invalidated after use).
          </p>
          <p>
            The server need not make the effort of deliberately trying to avoid re-assigning random numbers that have been used before: the chance of it happening is so low that even if it did, nobody would know to make use of it.
          </p>
          <p>
            When a user logs out through some deliberate logout function, their current cookie number is also invalidated. The user also has an option somewhere to clear <em>all</em>&#160;persistent logins being remembered by the system, just in case.
          </p>
          <p>
            Periodically, the database is purged of associations older than a certain time-period (three months, perhaps: the size of the table would be far more an issue than any possibilities of collision in a 128 bit random space).
          </p>
          <p>
            The following user functions must <em>not</em>&#160;be reachable through a cookie-based login, but only through the typing of a valid password:
          </p>
          <ul>
            <li>
              Changing the user's password
            </li>
            <li>
              Changing the user's email address (especially if email-based password recovery is used)
            </li>
            <li>
              Any access to the user's address, payment details or financial information
            </li>
            <li>
              Any ability to make a purchase
            </li>
          </ul>
          <p>
            <strong>Results</strong>
          </p>
          <p>
            If the login cookie is compromised, the attacker has access to the common functions of the site as that user. This is inevitable whatever the cookie contains. However, the attacker can not:
          </p>
          <ul>
            <li>
              Access sensitive user information
            </li>
            <li>
              Spend the user's money
            </li>
            <li>
              Recover the user's password and try it on other sites
            </li>
            <li>
              Prevent the user from receiving notifications from the site of things that may have been done in their name
            </li>
            <li>
              Share the stolen login with others
            </li>
          </ul>
          <p>
            The mutating nature of the cookie also provides a much smaller window of opportunity for an attacker to exploit a stolen cookie, and means the attacker must be far more careful they don't end up with a useless set of credentials.
          </p>
          <p>
            <strong>Update:</strong>&#160;Barry Jaspan suggests <a href="http://jaspan.com/improved_persistent_login_cookie_best_practice">an addition to the protocol</a>&#160;that would further reduce the window of opportunity for stolen cookies: if a cookie that has been known to be used before (and thus invalidated) is presented, treat it as evidence of an attack and invalidate <i>all</i>&#160;saved logins for that user.
          </p>
        </div>
      </div>
      <div class="asset-footer">
        
      </div>
    </div>
    <div id="trackbacks" class="trackbacks">
      <h2 class="trackbacks-header">
        7 TrackBacks
      </h2>
      <div class="trackbacks-info">
        <p>
          Listed below are links to blogs that reference this entry: <a href="http://fishbowl.pastiche.org/2004/01/19/persistent_login_cookie_best_practice/">Persistent Login Cookie Best Practice</a>.
        </p>
        <p>
          TrackBack URL for this entry: http://fishbowl.pastiche.org/mt-tb.cgi/464
        </p>
      </div>
      <div class="trackbacks-content">
        <div id="ping-282" class="trackback">
          <div class="inner">
            <div class="trackback-header">
              <div class="asset-meta">
                <a rel="nofollow" href="http://www.raibledesigns.com/page/rd/20040119#how_blogging_has_helped_me">How blogging has helped me this morning</a>&#160;from Raible Designs ~ We Build Web Apps on <a rel="nofollow" href="#ping-282">January 20, 2004 1:46 AM</a>
              </div>
            </div>
            <div class="trackback-content">
              <p>
                My early-morning blog reading somes through once again. First off, Charles explains how I should implement Remember Me . If understand him correctly, I basically need to create a new table (i.e. user_cookie) that has two columns: username and cookie_id <a rel="nofollow" href="http://www.raibledesigns.com/page/rd/20040119#how_blogging_has_helped_me">Read More</a>
              </p>
            </div>
          </div>
        </div>
        <div id="ping-283" class="trackback">
          <div class="inner">
            <div class="trackback-header">
              <div class="asset-meta">
                <a rel="nofollow" href="http://weblog.anthonyeden.com/archives/000061.html">Persistent Login Cookie</a>&#160;from All Things on <a rel="nofollow" href="#ping-283">January 20, 2004 1:48 AM</a>
              </div>
            </div>
            <div class="trackback-content">
              <p>
                Charles has a nice post on Persistent Login Cookie Best Practice. I was about to work on this problem (and I know others were doing the same) so Charles' post is quite timely.... <a rel="nofollow" href="http://weblog.anthonyeden.com/archives/000061.html">Read More</a>
              </p>
            </div>
          </div>
        </div>
        <div id="ping-284" class="trackback">
          <div class="inner">
            <div class="trackback-header">
              <div class="asset-meta">
                <a rel="nofollow" href="http://www.jroller.com/page/xroads/20040119#cookie_bandits">Cookie bandits</a>&#160;from In dust we trust on <a rel="nofollow" href="#ping-284">January 20, 2004 12:30 PM</a>
              </div>
            </div>
            <div class="trackback-content">
              <p>
                I don't like cookies. No big deal, I'm really not the only one, I think. For those looking up surprised, I am talking about those little things some websites drop on your pc... you didn't ask for it, they left it anyway, they don't apologize nor clean u <a rel="nofollow" href="http://www.jroller.com/page/xroads/20040119#cookie_bandits">Read More</a>
              </p>
            </div>
          </div>
        </div>
        <div id="ping-285" class="trackback">
          <div class="inner">
            <div class="trackback-header">
              <div class="asset-meta">
                <a rel="nofollow" href="http://www.amber.org/~petrilli/archive/2004/01/27/swimming_with_fish_and_authentication_on_the_web.html">Swimming with fish and authentication on the web</a>&#160;from Pensieri di un lunatico minore on <a rel="nofollow" href="#ping-285">January 28, 2004 2:11 AM</a>
              </div>
            </div>
            <div class="trackback-content">
              <p>
                From the Fishbowl comes a good summary of doing persistent login cookies in a way that is sane and logical.... <a rel="nofollow" href="http://www.amber.org/~petrilli/archive/2004/01/27/swimming_with_fish_and_authentication_on_the_web.html">Read More</a>
              </p>
            </div>
          </div>
        </div>
        <div id="ping-286" class="trackback">
          <div class="inner">
            <div class="trackback-header">
              <div class="asset-meta">
                <a rel="nofollow" href="http://www.burningdoor.com/eric/archives/000375.html">&quot;Remember Me&quot; Best Practice</a>&#160;from Dancing About Architecture on <a rel="nofollow" href="#ping-286">February 3, 2004 7:58 AM</a>
              </div>
            </div>
            <div class="trackback-content">
              <p>
                Implementing a persistent login cookie is one of those annoying little tasks that you have to do when creating a web UI. I just wanted to say thank you to Charles Miller for documenting his best practice for handling that ... good job. Source: The Fish... <a rel="nofollow" href="http://www.burningdoor.com/eric/archives/000375.html">Read More</a>
              </p>
            </div>
          </div>
        </div>
        <div id="ping-287" class="trackback">
          <div class="inner">
            <div class="trackback-header">
              <div class="asset-meta">
                <a rel="nofollow" href="http://weblogs.asp.net/guys/archive/2004/11/05/252737.aspx">Cookies Overview: HttpCookie Class, usage and considerations</a>&#160; from guyS's WebLog on <a rel="nofollow" href="#ping-287">November 5, 2004 7:26 PM</a>
              </div>
            </div>
            <div class="trackback-content">
              <p>
                TITLE: Cookies Overview: HttpCookie Class, usage and considerations URL: http://weblogs.asp.net/guys/archive/2004/11/05/252737.aspx IP: 66.129.67.203 BLOG NAME: guyS's WebLog DATE: 11/05/2004 07:26:27 PM <a rel="nofollow" href="http://weblogs.asp.net/guys/archive/2004/11/05/252737.aspx">Read More</a>
              </p>
            </div>
          </div>
        </div>
        <div id="ping-288" class="trackback">
          <div class="inner">
            <div class="trackback-header">
              <div class="asset-meta">
                <a rel="nofollow" href="http://blog.goranrakic.com/archives/2005/03/sigurno_kodiranje_u_phpu.html">Sigurno kodiranje u PHP-u</a>&#160;from Moja &#353;krabalica on <a rel="nofollow" href="#ping-288">March 11, 2005 9:26 AM</a>
              </div>
            </div>
            <div class="trackback-content">
              <p>
                Prate&#263;i neke blogove i mailing liste stekao sam utisak da je od po&#269;etka ove godine u PHP zajednici ukazivanje na probleme sigurnosti u PHP skriptovima mnogo obimnije nego ranije. PHP je jezik koji dozvoljava &quot;prljavo&quot; kodiranje - jednostavnim pozivim... <a rel="nofollow" href="http://blog.goranrakic.com/archives/2005/03/sigurno_kodiranje_u_phpu.html">Read More</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
<node CREATED="1352336942753" ID="ID_1073822101" LINK="http://fishbowl.pastiche.org/2004/01/19/persistent_login_cookie_best_practice/" MODIFIED="1352336942753" TEXT="fishbowl.pastiche.org &gt; 2004 &gt; 01 &gt; 19 &gt; Persistent login cookie best practice"/>
</node>
</node>
<node CREATED="1352337107633" FOLDED="true" ID="ID_743923262" MODIFIED="1352337173717" TEXT="Definitive Guide (from StackOverflow">
<node CREATED="1352337119624" ID="ID_1383207646" MODIFIED="1352337171632">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div id="answer-477578" data-answerid="477578" class="answer accepted-answer">
      <table>
        <tr>
          <td class="votecell">
            <div class="vote">
              <input value="477578" type="hidden" />
              <a title="This answer is useful (click again to undo)" class="vote-up-off">up vote</a>&#160;<font size="200%">859</font>&#160;<a title="This answer is not useful (click again to undo)" class="vote-down-off">down vote</a>&#160;accepted

              <div class="bounty-award-container">
                +50
              </div>
            </div>
          </td>
          <td class="answercell">
            <div class="post-text">
              <h2>
                PART I: How To Log In
              </h2>
              <ol>
                <li>
                  <p>
                    As a rule, <a href="http://en.wikipedia.org/wiki/CAPTCHA">CAPTCHAs</a>&#160;should be a last resort. They tend to be annoying, often aren't human-solvable, most of them are ineffective against bots, all of them are ineffective against cheap third-world labor (according to <a href="http://en.wikipedia.org/wiki/OWASP">OWASP</a>, the current sweatshop rate is $12 per 500 tests), and some implementations are technically illegal in some countries (see link number 1 from the MUST-READ list). If you must use a CAPTCHA, use <a href="http://en.wikipedia.org/wiki/ReCAPTCHA">reCAPTCHA</a>, since it is OCR-hard by definition (since it uses already OCR-misclassified book scans).
                  </p>
                </li>
                <li>
                  <p>
                    It is possible to prevent browsers from storing/retrieving a password with the autocomplete tag for forms/input fields. However in the real world, your customers will have many accounts on different systems; it compromises their security if they use the same password for every site. Can you expect them to remember different passwords for every site? There are some good password managers out there, however there are also bad ones - which will become a target for attackers.
                  </p>
                </li>
                <li>
                  <p>
                    The <strong>only</strong>&#160;(currently practical) way to protect against login interception (packet sniffing) during login is by using a certificate-based encryption scheme (for example, <a href="http://en.wikipedia.org/wiki/SSL">SSL</a>) or a proven &amp; tested challenge-response scheme (for example, the <a href="http://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange">Diffie-Hellman</a>-based SRP). <em>Any other method can be easily circumvented</em>&#160;by an eavesdropping attacker. On that note: hashing the password client-side (for example, with JavaScript) is useless unless it is combined with one of the above - that is, either securing the line with strong encryption or using a tried-and-tested challenge-response mechanism (if you don't know what that is, just know that it is one of the most difficult to prove, most difficult to design, and most difficult to implement concepts in digital security). Hashing the password <em>is</em>&#160;effective against <strong>password disclosure</strong>, but not against replay attacks, Man-In-The-Middle attacks / hijackings, or brute-force attacks (since we are handing the attacker both username, salt and hashed password).
                  </p>
                </li>
                <li>
                  <p>
                    After sending the authentication tokens, the system needs a way to remember that you have been authenticated - this fact should only ever be stored serverside in the session data. A cookie can be used to reference the session data. Wherever possible, the cookie should have the secure and HTTP Only flags set when sent to the browser. The httponly flag provides some protection against the cookie being read by a XSS attack. The secure flag ensures that the cookie is only sent back via HTTPS, and therefore protects against network sniffing attacks. The value of the cookie should not be predictable. Where a cookie referencing a non-existent session is presented, its value should be replaced immediately to prevent <a href="https://www.owasp.org/index.php/Session_Fixation">session fixation</a>.
                  </p>
                </li>
              </ol>
              <h2>
                PART II: How To Remain Logged In - The Infamous &quot;Remember Me&quot; Checkbox
              </h2>
              <p>
                Persistent Login Cookies (&quot;remember me&quot; functionality) are a danger zone; on the one hand, they are entirely as safe as conventional logins when users understand how to handle them; and on the other hand, they are an enormous security risk in the hands of most users, who use them on public computers, forget to log out, don't know what cookies are or how to delete them, etc.
              </p>
              <p>
                Personally, I want my persistent logins for the web sites I visit on a regular basis, but I know how to handle them safely. If you are positive that your users know the same, you can use persistent logins with a clean conscience. If not - well, then you're more like me; subscribing to the philosophy that users who are careless with their login credentials brought it upon themselves if they get hacked. It's not like we go to our user's houses and tear off all those facepalm-inducing Post-It notes with passwords they have lined up on the edge of their monitors, either. If people are idiots, then let them eat idiot cake.
              </p>
              <p>
                Of course, some systems can't afford to have <em>any</em>&#160;accounts hacked; for such systems, there is no way you can justify having persistent logins.
              </p>
              <p>
                <strong>If you DO decide to implement persistent login cookies, this is how you do it:</strong>
              </p>
              <ol>
                <li>
                  <p>
                    First, follow <a href="http://fishbowl.pastiche.org/2004/01/19/persistent_login_cookie_best_practice/">Charles Miller's 'Best Practices' article</a>&#160; Do not get tempted to follow the <a href="http://jaspan.com/improved_persistent_login_cookie_best_practice">'Improved' Best Practices</a>&#160;linked at the end of his article. Sadly, the 'improvements' to the scheme are easily thwarted (all an attacker has to do when stealing the 'improved' cookie is remember to delete the old one. This will require the legitimate user to re-login, creating a new series identifier and leaving the stolen one valid).
                  </p>
                </li>
                <li>
                  <p>
                    And <strong>DO NOT STORE THE PERSISTENT LOGIN COOKIE (TOKEN) IN YOUR DATABASE, ONLY A HASH OF IT!</strong>&#160;The login token is Password Equivalent, so if an attacker got his hands on your database, he could use the tokens to log in to any account, just as if they were cleartext login-password combinations. Therefore, use strong salted hashing (bcrypt / phpass) when storing persistent login tokens.
                  </p>
                </li>
              </ol>
              <h2>
                PART III: Using Secret Questions
              </h2>
              <p>
                <strong>Don't. Never ever use 'secret questions'</strong>. Read the paper from link number 5 from the MUST-READ list. You can ask Sarah Palin about that one, after her AOL email account got hacked during the presidential campaign because the answer to her 'security' question was... (wait for it) ... &quot;Wasilla High School&quot;!
              </p>
              <p>
                Even with user-specified questions, it is highly likely that most users will choose either:
              </p>
              <ul>
                <li>
                  <p>
                    A 'standard' secret question like mother's maiden name or favourite pet
                  </p>
                </li>
                <li>
                  <p>
                    A simple piece of trivia that anyone could lift from their blog, LinkedIn profile, or similar
                  </p>
                </li>
                <li>
                  <p>
                    Any question that is easier to answer than guessing their password. Which, for any decent password, is every question conceivable.
                  </p>
                </li>
              </ul>
              <p>
                <strong>In conclusion, security questions are inherently insecure in all their forms and variations, and should never be employed in an authentication scheme for any reason.</strong>
              </p>
              <p>
                A secondary question is often considered as adequate for fulfilling a requirement for two-factor authentication. While capturing some of the response via clicks rather than typing in theory provides protection against keylogger attacks, it is still just an extension to the password mechanism - and when users are presented with a text box instead of drop-downs on a phishing site, they rarely perceive this as abnormal. Note that you may be able to fulfill your two-factor obligations by using a long-lasting cookie (granted on submission of multiple authentication questions) in place of a security question asked each and every time - but at the expense of user convenience.
              </p>
              <p>
                The only reason anyone still uses security questions by choice is that is saves the cost of a few support calls from users who can't remember their email passwords to get to their reactivation codes. At the expense of security and Sara Palin's reputation, that is. Worth it? You be the judge.
              </p>
              <h2>
                PART IV: Forgotten Password Functionality
              </h2>
              <p>
                I already mentioned why you should <strong>never use security questions</strong>&#160;for handling forgotten/lost user passwords. There are at least two more all-too-common pitfalls to avoid in this field:
              </p>
              <ol>
                <li>
                  <p>
                    Don't RESET user's passwords no matter what - 'reset' passwords are harder for the user to remember, which means he MUST either change it OR write it down - say, on a bright yellow Post-It on the edge of his monitor. Instead, just let users pick a new one right away - which is what they want to do anyway.
                  </p>
                </li>
                <li>
                  <p>
                    Always hash the lost password code/token in the database. <em><strong>AGAIN</strong></em>, this code is another example of a Password Equivalent, so it MUST be hashed in case an attacker got his hands on your database. When a lost password code is requested, send the plaintext code to the user's email address, then hash it, save the hash in your database -- and <em>throw away the original</em>. Just like a password or a persistent login token.
                  </p>
                </li>
              </ol>
              <p>
                A final note: always make sure your interface for entering the 'lost password code' is at least as secure as your login form itself, or an attacker will simply use this to gain access instead. Making sure you generate very long 'lost password codes' (for example, 16 case sensitive alphanumeric characters) is a good start, but consider adding the same throttling that you do for logins.
              </p>
              <h2>
                PART V: Checking Password Strength
              </h2>
              <p>
                First, you'll want to read this small article for a reality check: <a href="http://www.whatsmypass.com/?p=415">The 500 most common passwords</a>
              </p>
              <p>
                Okay, so maybe the list isn't the <em>canonical</em>&#160;list of most common passwords on <em>any</em>&#160;system <em>anywhere ever</em>, but it's a good indication of how poorly people will choose their passwords when there is no enforced policy in place. Plus, the list looks frighteningly close to home when you compare it to the publicly available analyses of 40.000+ recently stolen MySpace passwords.
              </p>
              <p>
                Well, enough MySpace-bashing for now. Moving on..
              </p>
              <p>
                So: With no minimum password strength requirements, 2% of users use one of the top 20 most common passwords. Meaning: if an attacker gets just 20 attempts, 1 in 50 accounts on your website will be crackable.
              </p>
              <p>
                Thwarting this requires calculating the entropy of a password and then applying a threshold. The National Institute of Standards and Technology (NIST) <a href="http://en.wikipedia.org/wiki/Password_strength#NIST_Special_Publication_800-63">Special Publication 800-63</a>&#160; has a set of very good suggestions. That, when combined with a dictionary and keyboard layout analysis (for example, 'qwertyuiop' is a bad password), can <a href="http://cubicspot.blogspot.com/2012/01/how-to-calculate-password-strength-part.html">reject 99% of all poorly selected passwords</a>&#160;at a level of 18 bits of entropy. Simply calculating password strength and showing a visual strength meter to a user is insufficient. Unless it is enforced, users will ignore it.
              </p>
              <h2>
                PART VI: Much More - Or: Preventing Rapid-Fire Login Attempts
              </h2>
              <p>
                First, have a look at the numbers: <a href="http://www.lockdown.co.uk/?pg=combi&amp;s=articles">Password Recovery Speeds - How long will your password stand up</a>
              </p>
              <p>
                If you don't have the time to look through the tables in that link, here's the gist of them:
              </p>
              <ol>
                <li>
                  <p>
                    It takes <em>virtually no time</em>&#160;to crack a weak password, even if you're cracking it with an abacus
                  </p>
                </li>
                <li>
                  <p>
                    It takes <em>virtually no time</em>&#160;to crack an alphanumeric 9-character password, if it is <strong>case insensitive</strong>
                  </p>
                </li>
                <li>
                  <p>
                    It takes <em>virtually no time</em>&#160;to crack an intricate, symbols-and-letters-and-numbers, upper-and-lowercase password, if it is <strong>less than 8 characters long</strong>&#160;(a desktop PC can search the entire keyspace up to 7 characters in a matter of days or even hours)
                  </p>
                </li>
                <li>
                  <p>
                    <strong>It would, however, take an inordinate amount of time to crack even a 6-character password, <em>if you were limited to one attempt per second!</em></strong>
                  </p>
                </li>
              </ol>
              <p>
                So what can we learn from these numbers? Well, lots, but we can focus on the most important part: the fact that preventing large numbers of rapid-fire successive login attempts (ie. the <em>brute force</em>&#160;attack) really isn't that difficult. But preventing it <em>right</em>&#160;isn't as easy as it seems.
              </p>
              <p>
                Generally speaking, you have three choices that are all effective against brute-force attacks <em>(and dictionary attacks, but since you are already employing a strong passwords policy, they shouldn't be an issue)</em>:
              </p>
              <ul>
                <li>
                  <p>
                    Present a <strong>CAPTCHA</strong>&#160;after N failed attempts (annoying as hell and often ineffective -- but I'm repeating myself here)
                  </p>
                </li>
                <li>
                  <p>
                    <strong>Locking accounts</strong>&#160;and requiring email verification after N failed attempts (this is a <a href="http://en.wikipedia.org/wiki/Denial-of-service_attack">DoS</a>&#160;attack waiting to happen)
                  </p>
                </li>
                <li>
                  <p>
                    And finally, <strong>login throttling</strong>: that is, setting a time delay between attempts after N failed attempts (yes, DoS attacks are still possible, but at least they are far less likely and a lot more complicated to pull off).
                  </p>
                </li>
              </ul>
              <p>
                <strong>Best practice #1:</strong>&#160;A short time delay that increases with the number of failed attempts, like:
              </p>
              <ul>
                <li>
                  1 failed attempt = no delay
                </li>
                <li>
                  2 failed attempts = 2 sec delay
                </li>
                <li>
                  3 failed attempts = 4 sec delay
                </li>
                <li>
                  4 failed attempts = 8 sec delay
                </li>
                <li>
                  5 failed attempts = 16 sec delay
                </li>
                <li>
                  etc.
                </li>
              </ul>
              <p>
                DoS attacking this scheme <em>would</em>&#160;be very impractical, but on the other hand, potentially devastating, since the delay increases exponentially. A DoS attack lasting a few days could suspend the user for weeks.
              </p>
              <blockquote>
                <p>
                  To clarify: The delay is <em>not</em>&#160;a delay before returning the response to the browser. It is more like a timeout or refractory period during which login attempts to a specific account or from a specific IP address will not be accepted or evaluated at all. That is, correct credentials will not return in a successful login, and incorrect credentials will not trigger a delay increase.
                </p>
              </blockquote>
              <p>
                <strong>Best practice #2:</strong>&#160;A medium length time delay that goes into effect after N failed attempts, like:
              </p>
              <ul>
                <li>
                  1-4 failed attempts = no delay
                </li>
                <li>
                  5 failed attempts = 15-30 min delay
                </li>
              </ul>
              <p>
                DoS attacking this scheme would be quite impractical, but certainly doable. Also, it might be relevant to note that such a long delay can be very annoying for a legitimate user. Forgetful users will dislike you.
              </p>
              <p>
                <strong>Best practice #3:</strong>&#160;Combining the two approaches - either a fixed, short time delay that goes into effect after N failed attempts, like:
              </p>
              <ul>
                <li>
                  1-4 failed attempts = no delay
                </li>
                <li>
                  5+ failed attempts = 20 sec delay
                </li>
              </ul>
              <p>
                Or, an increasing delay with a fixed upper bound, like:
              </p>
              <ul>
                <li>
                  1 failed attempt = 5 sec delay
                </li>
                <li>
                  2 failed attempts = 15 sec delay
                </li>
                <li>
                  3+ failed attempts = 45 sec delay
                </li>
              </ul>
              <p>
                This final scheme was taken from the OWASP best-practices suggestions (link 1 from the MUST-READ list), and should be considered best practice, even if it is admittedly on the restrictive side.
              </p>
              <blockquote>
                <p>
                  <em>As a rule of thumb however, I would say: the stronger your password policy is, the less you have to bug users with delays. If you require strong (case-sensitive alphanumerics + required numbers and symbols) 9+ character passwords, you could give the users 2-4 non-delayed password attempts before activating the throttling.</em>
                </p>
              </blockquote>
              <p>
                DoS attacking this final login throttling scheme would be <em><strong>very</strong></em>&#160; impractical. And as a final touch, always allow persistent (cookie) logins (and/or a CAPTCHA-verified login form) to pass through, so legitimate users won't even be delayed <em>while the attack is in progress</em>. That way, the very impractical DoS attack becomes an <em>extremely</em>&#160;impractical attack.
              </p>
              <p>
                Additionally, it makes sense to do more aggressive throttling on admin accounts, since those are the most attractive entry points
              </p>
              <h2>
                PART VII: Distributed Brute Force Attacks
              </h2>
              <p>
                Just as an aside, more advanced attackers will try to circumvent login throttling by 'spreading their activities':
              </p>
              <ul>
                <li>
                  <p>
                    Distributing the attempts on a botnet to prevent IP address flagging
                  </p>
                </li>
                <li>
                  <p>
                    Rather than picking one user and trying the 50.000 most common passwords (which they can't, because of our throttling), they will pick THE most common password and try it against 50.000 users instead. That way, not only do they get around maximum-attempts measures like CAPTCHAs and login throttling, their chance of success increases as well, since the number 1 most common password is far more likely than number 49.995
                  </p>
                </li>
                <li>
                  <p>
                    Spacing the login requests for each user account, say, 30 seconds apart, to sneak under the radar
                  </p>
                </li>
              </ul>
              <p>
                Here, the best practice would be <strong>logging the number of failed logins, system-wide</strong>, and using a running average of your site's bad-login frequency as the basis for an upper limit that you then impose on all users.
              </p>
              <p>
                Too abstract? Let me rephrase:
              </p>
              <p>
                Say your site has had an average of 120 bad logins per day over the past 3 months. Using that (running average), your system might set the global limit to 3 times that -- ie. 360 failed attempts over a 24 hour period. Then, if the total number of failed attempts across all accounts exceeds that number within one day (or even better, monitor the rate of acceleration and trigger on a calculated treshold), it activates system-wide login throttling - meaning short delays for ALL users (still, with the exception of cookie logins and/or backup CAPTCHA logins).
              </p>
              <p>
                I also posted a question with <a href="http://stackoverflow.com/questions/479233/what-is-the-best-distributed-brute-force-countermeasure">more details and a really good discussion of how to avoid tricky pitfals</a>&#160;in fending off distributed brute force attacks
              </p>
              <h2>
                PART VIII: Two-Factor Authentication and Authentication Providers
              </h2>
              <p>
                Credentials can be compromised, whether by exploits, passwords being written down and lost, laptops with keys being stolen, or users entering logins into phishing sites. Logins can be protected with two-factor authentication, which use out-of-band factors such as single-use codes received from a phone call, SMS message, or dongle. Several providers offer two-factor authentication services.
              </p>
              <p>
                Authentication can be completely delegated to a single-sign-on service such as OAuth, OpenID or <a href="https://developer.mozilla.org/en-US/docs/Persona">Persona (nee BrowserID)</a>, where another provider handles collecting credentials. This pushes the problem to a trusted third party. Twitter is an example of an OAuth provider, while Facebook provides a similar proprietary solution.
              </p>
              <h2>
                MUST-READ LINKS About Web Authentication
              </h2>
              <ul>
                <li>
                  <a href="http://www.owasp.org/index.php/Guide_to_Authentication">OWASP Guide To Authentication</a>
                </li>
                <li>
                  <a href="http://www.cs.umass.edu/~kevinfu/papers/webauth_tr.pdf">Dos and Don&#8217;ts of Client Authentication on the Web (very readable MIT research paper)</a>
                </li>
                <li>
                  <a href="http://fishbowl.pastiche.org/2004/01/19/persistent_login_cookie_best_practice/">Charles Miller's Persistent Login Cookie Best Practice</a>
                </li>
                <li>
                  <a href="http://en.wikipedia.org/wiki/HTTP_cookie#Drawbacks_of_cookies">Wikipedia: HTTP cookie</a>
                </li>
                <li>
                  <a href="http://cups.cs.cmu.edu/soups/2008/proceedings/p13Rabkin.pdf">Personal knowledge questions for fallback authentication: Security questions in the era of Facebook (very readable Berkeley research paper)</a>
                </li>
              </ul>
            </div>
            <table class="fw">
              <tr>
                <td class="vt">
                  <div class="post-menu">
                    <a title="short permalink to this answer" id="link-post-477578" href="/a/477578" class="short-link">share</a>|<a title="" href="/posts/477578/edit" class="suggest-edit-post">improve this answer</a>
                  </div>
                </td>
                <td align="right" class="post-signature">
                  <div class="user-info ">
                    <div class="user-action-time">
                      edited <a title="show all edits to this post" href="/posts/477578/revisions">1 hour ago</a>
                    </div>
                    <div class="user-gravatar32">
                      
                    </div>
                    <div class="user-details">
                      <br />
                      
                    </div>
                  </div>
                </td>
                <td align="right" class="post-signature">
                  <div class="user-info">
                    <div class="user-details">
                      community wiki
                    </div>
                    <br />
                    

                    <div class="user-details">
                      <a title="show revision history for this post" id="history-477578" href="/posts/477578/revisions">15 revs, 9 users 49%<br />Jeff Atwood </a>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="votecell">
            
          </td>
          <td>
            <div id="comments-477578" class="comments">
              <table>
                <tr id="comment-602473" class="comment">
                  <td class="comment-actions">
                    <table>
                      <tr>
                        <td class="comment-score">
                          20
                        </td>
                        <td>
                          &#160;
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td class="comment-text">
                    <div>
                      Well, I don't really agree with the Captcha part, yes Captchas are annoying and they can be broken (except recaptcha but this is barely solvable by humans!) but this is exactly like saying don't use a spam filter because it has less than 0.1% false negatives .. this very site uses Captchas, they are not perfect but they cut a considerable amount of spam and there's simply no good alternative to them&#160;&#8211;&#160;<a title="2301 reputation" href="/users/676066/waleed-eissa" class="comment-user">Waleed Eissa</a>&#160; <a onclick="StackExchange.question.highlightComment(602473, 477578)" href="#comment602473_477578" class="comment-link">Apr 27 '09 at 2:44</a>
                    </div>
                  </td>
                </tr>
                <tr id="comment-3562647" class="comment">
                  <td class="comment-actions">
                    <table>
                      <tr>
                        <td class="comment-score">
                          21
                        </td>
                        <td>
                          &#160;
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td class="comment-text">
                    <div>
                      the current rate of people solving is $1 per 1000 captchas (with discounts for bulk users)&#160;&#8211;&#160;<a title="3879 reputation" href="/users/123927/fluffy" class="comment-user">Fluffy</a>&#160; <a onclick="StackExchange.question.highlightComment(3562647, 477578)" href="#comment3562647_477578" class="comment-link">Aug 6 '10 at 9:08</a>
                    </div>
                  </td>
                </tr>
                <tr id="comment-7459097" class="comment">
                  <td class="comment-actions">
                    <table>
                      <tr>
                        <td class="comment-score">
                          8
                        </td>
                        <td>
                          &#160;
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td class="comment-text">
                    <div>
                      merged into one answer -- but I have a lot of technical reservations about this answer, which reads more like a blog rant than actual advice: <a title="old problematic question edit or delete" href="http://meta.stackoverflow.com/questions/95172/old-problematic-question-edit-or-delete">meta.stackoverflow.com/questions/95172/&#8230;</a>&#160; &#8211;&#160;<a title="23107 reputation" href="/users/1/jeff-atwood" class="comment-user">Jeff Atwood&#9830;</a>&#160;<a onclick="StackExchange.question.highlightComment(7459097, 477578)" href="#comment7459097_477578" class="comment-link">Jun 16 '11 at 9:07</a>
                    </div>
                  </td>
                </tr>
                <tr id="comment-7508301" class="comment">
                  <td class="comment-actions">
                    <table>
                      <tr>
                        <td class="comment-score">
                          27
                        </td>
                        <td>
                          &#160;
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td class="comment-text">
                    <div>
                      @Jeff: I'm sorry to hear that you have issues with my reply. I didn't know there was a debate on Meta about this answer, I would have gladly edited it myself if you'd asked me to. And deleting my posts just deleted 1200 reputation from my account, which hurts :(&#160;&#8211;&#160;<a title="16012 reputation" href="/users/57068/jens-roland" class="comment-user">Jens Roland</a>&#160;<a onclick="StackExchange.question.highlightComment(7508301, 477578)" href="#comment7508301_477578" class="comment-link">Jun 19 '11 at 17:00</a>
                    </div>
                  </td>
                </tr>
                <tr id="comment-8329775" class="comment">
                  <td class="comment-actions">
                    <table>
                      <tr>
                        <td class="comment-score">
                          67
                        </td>
                        <td>
                          &#160;
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td class="comment-text">
                    <div>
                      Some answers actually need a 'send this guy some money' option.&#160;&#8211;&#160;<a title="1689 reputation" href="/users/109347/john-nicholas" class="comment-user">John Nicholas</a>&#160;<a onclick="StackExchange.question.highlightComment(8329775, 477578)" href="#comment8329775_477578" class="comment-link">Aug 8 '11 at 11:46</a>
                    </div>
                  </td>
                </tr>
              </table>
            </div>
            <a data-comments-count="34" title="expand to show all comments on this post" id="comments-link-477578" class="comments-link">show <b>34</b>&#160;more comments</a>

            <div style="color: rgb(0, 0, 0)" class="was-this-helpful">
              feedback
            </div>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html></richcontent>
<node CREATED="1352336893967" ID="ID_981043378" LINK="http://stackoverflow.com/questions/549/the-definitive-guide-to-forms-based-website-authentication" MODIFIED="1352336893967" TEXT="stackoverflow.com &gt; Questions &gt; 549 &gt; The-definitive-guide-to-forms-based-website-authentication"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1351282145608" FOLDED="true" ID="ID_634465394" MODIFIED="1352231612520" TEXT="Python">
<node CREATED="1351282155698" ID="ID_871806485" MODIFIED="1351288106727" TEXT="Dev Setup">
<node CREATED="1351282160603" FOLDED="true" ID="ID_1046742944" MODIFIED="1351288122262" TEXT="Making a new virtual environment using virtualenv">
<node CREATED="1351282190288" ID="ID_1344251588" MODIFIED="1351282190288" TEXT="">
<node CREATED="1351282194744" ID="ID_1262079775" MODIFIED="1351282214808">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      $ curl -O https://raw.github.com/pypa/virtualenv/master/virtualenv.py
    </p>
    <p>
      $ python virtualenv.py my_new_env
    </p>
    <p>
      $ . my_new_env/bin/activate
    </p>
    <p>
      (my_new_env)$ pip install ...
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1352231594779" FOLDED="true" ID="ID_159330638" MODIFIED="1352231611112" TEXT="Packaging">
<node CREATED="1352231600997" ID="ID_630885704" MODIFIED="1352231606497">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <table charset="utf-8" style="text-indent: 0px; font-family: Times; word-spacing: 0px; text-transform: none; letter-spacing: normal" border="1">
      <tr>
        <th>
          Task
        </th>
        <th>
          Ruby
        </th>
        <th>
          Python
        </th>
      </tr>
      <tr>
        <td>
          Install a package
        </td>
        <td>
          <pre><code>gem install package</code></pre>
        </td>
        <td>
          <pre><code>pip install package</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Install with a version
        </td>
        <td>
          <pre><code>gem install -v 1.2.3 package</code></pre>
        </td>
        <td>
          <pre><code>pip install package==1.2.3</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Install a runtime version
        </td>
        <td>
          <pre><code>rvm install ree</code></pre>
        </td>
        <td>
          <pre><code># Install normally from source or binary distribution</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Create a package set
        </td>
        <td>
          <pre><code>rvm gemset create mygemset</code></pre>
        </td>
        <td>
          <pre><code>virtualenv myenv</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Activate a package set
        </td>
        <td>
          <pre><code>rvm use ree@mypackages</code></pre>
        </td>
        <td>
          <pre><code>source myenv/bin/activate</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Activate a runtime version
        </td>
        <td>
          <pre><code>rvm use ree-1.8.7</code></pre>
        </td>
        <td>
          <pre><code># Happens for free via virtualenv:
python2.5 -m virtualenv myenv
source myenv/bin/activate</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Create a package sandbox
        </td>
        <td>
          <pre><code># Create a gemfile containing:
source :rubygems
gem mypackage

# Then bundle:
bundle</code></pre>
        </td>
        <td>
          <pre><code># Install packages normally after activating virtualenv
pip install mypackage

# Then freeze:
pip freeze &gt; requirements.txt</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Activate an existing package sandbox
        </td>
        <td>
          <pre><code>bundle</code></pre>
        </td>
        <td>
          <pre><code># Activate a virtualenv, then:
pip install -r requirements.txt</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Execute a script within the sandbox
        </td>
        <td>
          <pre><code>bundle exec myscript.rb</code></pre>
        </td>
        <td>
          <pre><code># Nothing special required after activating virtualenv</code></pre>
        </td>
      </tr>
      <tr>
        <td>
          Activate a dependency set in code
        </td>
        <td>
          <pre><code>require 'rubygems'
require 'bundler'
Bundler.setup</code></pre>
        </td>
        <td>
          <pre><code># Nothing special required after activating virtualenv</code></pre>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1352352732529" ID="ID_1139698637" MODIFIED="1352352734273" TEXT="Haskell">
<node CREATED="1352352734577" ID="ID_1182690662" MODIFIED="1352352736249" TEXT="Functions">
<node CREATED="1352352736488" ID="ID_1848908987" MODIFIED="1352352762531" TEXT="let var = expression in body">
<node CREATED="1352352773782" ID="ID_305866743" MODIFIED="1352352776781" TEXT="ex: let x = 8 * 10 in x + x "/>
<node CREATED="1352352934196" ID="ID_1777679722" MODIFIED="1352352936885" TEXT="ex let square x = x * x in map square [1..10]"/>
</node>
</node>
<node CREATED="1352354847284" ID="ID_236108850" MODIFIED="1352354849144" TEXT="Books">
<node CREATED="1352354854932" ID="ID_940420831" MODIFIED="1352354858804" TEXT="Real World Haskell">
<node CREATED="1352354859138" ID="ID_721129844" LINK="http://book.realworldhaskell.org/" MODIFIED="1352354859138" TEXT="book.realworldhaskell.org"/>
</node>
<node CREATED="1352354870667" ID="ID_1418655715" MODIFIED="1352354875400" TEXT="Learn Haskell for Great Good">
<node CREATED="1352354882024" ID="ID_571917096" LINK="http://learnyouahaskell.com/" MODIFIED="1352354882024" TEXT="learnyouahaskell.com"/>
</node>
<node CREATED="1353454213435" ID="ID_669914148" MODIFIED="1353454222096" TEXT="Notations and Operators">
<node CREATED="1353454222852" ID="ID_335384577" LINK="/Users/peterpanaguiton/Documents/Haskell/haskell-operatorer.pdf" MODIFIED="1353454222852" TEXT="haskell-operatorer.pdf"/>
<node CREATED="1353454231394" ID="ID_1987899367" MODIFIED="1353454234789" TEXT="Web link">
<node CREATED="1353454241942" ID="ID_1058651566" LINK="http://www.imada.sdu.dk/~rolf/Edu/DM22/F06/haskell-operatorer.pdf" MODIFIED="1353454241942" TEXT="imada.sdu.dk &gt; Rolf &gt; Edu &gt; DM22 &gt; F06 &gt; Haskell-operatorer"/>
</node>
</node>
</node>
<node CREATED="1352355206557" FOLDED="true" ID="ID_173682216" MODIFIED="1352355231988" TEXT="Style Guide">
<node CREATED="1352355209981" ID="ID_783814312" MODIFIED="1352355218052">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div class="file">
      <div class="meta">
        <div class="info">
          file&#160;342 lines (256 sloc)&#160;7.749 kb
        </div>
        <ul class="button-group actions">
          <li>
            <a original-title="Clicking this button will automatically fork this project so you can edit the file" class="grouped-button file-edit-link minibutton bigger lighter" data-hotkey="e" style="display: block" data-method="post" rel="nofollow" href="/tibbe/haskell-style-guide/edit/master/haskell-style.md">Edit</a>
          </li>
          <li>
            <a id="raw-url" class="minibutton grouped-button bigger lighter" href="/tibbe/haskell-style-guide/raw/master/haskell-style.md">Raw</a>
          </li>
          <li>
            <a class="minibutton grouped-button bigger lighter" href="/tibbe/haskell-style-guide/blame/master/haskell-style.md">Blame</a>
          </li>
          <li>
            <a class="minibutton grouped-button bigger lighter" rel="nofollow" href="/tibbe/haskell-style-guide/commits/master/haskell-style.md">History</a>
          </li>
        </ul>
      </div>
      <div id="readme" class="blob instapaper_body">
        <article itemprop="mainContentOfPage" class="markdown-body entry-content">
        

        <h1>
          <a class="anchor" name="haskell-style-guide" href="#haskell-style-guide">
</a>Haskell Style Guide
        </h1>
        <p>
          This is a short document describing the preferred coding style for this project. I've tried to cover the major areas of formatting and naming. When something isn't covered by this guide you should stay consistent with the code in the other modules.
        </p>
        <h2>
          <a class="anchor" name="formatting" href="#formatting">
</a>Formatting
        </h2>
        <h3>
          <a class="anchor" name="line-length" href="#line-length">
</a>Line Length
        </h3>
        <p>
          Maximum line length is <em>80 characters</em>.
        </p>
        <h3>
          <a class="anchor" name="indentation" href="#indentation">
</a>Indentation
        </h3>
        <p>
          Tabs are illegal. Use spaces for indenting. Indent your code blocks with <em>4 spaces</em>. Indent the <code>where</code>&#160;keyword two spaces to set it apart from the rest of the code and indent the definitions in a <code>where</code>&#160; clause 2 spaces. Some examples:
        </p>
        <div class="highlight">
          <pre>sayHello :: IO ()
sayHello = do
    name &lt;- getLine
    putStrLn $ greeting name
  where
    greeting name = &quot;Hello, &quot; ++ name ++ &quot;!&quot;

filter :: (a -&gt; Bool) -&gt; [a] -&gt; [a]
filter _ []     = []
filter p (x:xs)
    | p x       = x : filter p xs
    | otherwise = filter p xs</pre>
        </div>
        <h3>
          <a class="anchor" name="blank-lines" href="#blank-lines">
</a>Blank Lines
        </h3>
        <p>
          One blank line between top-level definitions. No blank lines between type signatures and function definitions. Add one blank line between functions in a type class instance declaration if the functions bodies are large. Use your judgement.
        </p>
        <h3>
          <a class="anchor" name="whitespace" href="#whitespace">
</a>Whitespace
        </h3>
        <p>
          Surround binary operators with a single space on either side. Use your better judgement for the insertion of spaces around arithmetic operators but always be consistent about whitespace on either side of a binary operator. Don't insert a space after a lambda.
        </p>
        <h3>
          <a class="anchor" name="data-declarations" href="#data-declarations">
</a>Data Declarations
        </h3>
        <p>
          Align the constructors in a data type definition. Example:
        </p>
        <div class="highlight">
          <pre>data Tree a = Branch a (Tree a) (Tree a)
            | Leaf</pre>
        </div>
        <p>
          For long type names the following formatting is also acceptable:
        </p>
        <div class="highlight">
          <pre>data HttpException
    = InvalidStatusCode Int
    | MissingContentHeader</pre>
        </div>
        <p>
          Format records as follows:
        </p>
        <div class="highlight">
          <pre>data Person = Person
    { firstName :: String  -- ^ First name
    , lastName  :: String  -- ^ Last name
    , age       :: Int     -- ^ Age
    } deriving (Eq, Show)</pre>
        </div>
        <h3>
          <a class="anchor" name="list-declarations" href="#list-declarations">
</a>List Declarations
        </h3>
        <p>
          Align the elements in the list. Example:
        </p>
        <div class="highlight">
          <pre>exceptions =
    [ InvalidStatusCode
    , MissingContentHeader
    , InternalServerError
    ]</pre>
        </div>
        <p>
          Optionally, you can skip the first newline. Use your judgement.
        </p>
        <div class="highlight">
          <pre>directions = [ North
             , East
             , South
             , West
             ]</pre>
        </div>
        <h3>
          <a class="anchor" name="pragmas" href="#pragmas">
</a>Pragmas
        </h3>
        <p>
          Put pragmas immediately following the function they apply to. Example:
        </p>
        <div class="highlight">
          <pre>id :: a -&gt; a
id x = x
{-# INLINE id #-}</pre>
        </div>
        <p>
          In the case of data type definitions you must put the pragma before the type it applies to. Example:
        </p>
        <div class="highlight">
          <pre>data Array e = Array
    {-# UNPACK #-} !Int
    !ByteArray</pre>
        </div>
        <h3>
          <a class="anchor" name="hanging-lambdas" href="#hanging-lambdas">
</a>Hanging Lambdas
        </h3>
        <p>
          You may or may not indent the code following a &quot;hanging&quot; lambda. Use your judgement. Some examples:
        </p>
        <div class="highlight">
          <pre>bar :: IO ()
bar = forM_ [1, 2, 3] $ \n -&gt; do
          putStrLn &quot;Here comes a number!&quot;
          print n

foo :: IO ()
foo = alloca 10 $ \a -&gt;
      alloca 20 $ \b -&gt;
      cFunction a b</pre>
        </div>
        <h3>
          <a class="anchor" name="export-lists" href="#export-lists">
</a>Export Lists
        </h3>
        <p>
          Format export lists as follows:
        </p>
        <div class="highlight">
          <pre>module Data.Set
    (
      -- * The @Set@ type
      Set
    , empty
    , singleton

      -- * Querying
    , member
    ) where</pre>
        </div>
        <h3>
          <a class="anchor" name="if-then-else-clauses" href="#if-then-else-clauses">
</a>If-then-else clauses
        </h3>
        <p>
          Generally, guards and pattern matches should be preferred over if-then-else clauses, where possible. Short cases should usually be put on a single line (when line length allows it).
        </p>
        <p>
          When writing non-monadic code (i.e. when not using <code>do</code>) and guards and pattern matches can't be used, you can align if-then-else clauses you like you would normal expressions:
        </p>
        <div class="highlight">
          <pre>foo = if ...
      then ...
      else ...</pre>
        </div>
        <p>
          Otherwise, you should be consistent with the 4-spaces indent rule, and the <code>then</code>&#160;and the <code>else</code>&#160;keyword should be aligned. Examples:
        </p>
        <div class="highlight">
          <pre>foo = do
    someCode
    if condition
        then someMoreCode
        else someAlternativeCode</pre>
        </div>
        <div class="highlight">
          <pre>foo = bar $ \qux -&gt; if predicate qux
    then doSomethingSilly
    else someOtherCode</pre>
        </div>
        <p>
          The same rule applies to nested do blocks:
        </p>
        <div class="highlight">
          <pre>foo = do
    instruction &lt;- decodeInstruction
    skip &lt;- load Memory.skip
    if skip == 0x0000
        then do
            execute instruction
            addCycles $ instructionCycles instruction
        else do
            store Memory.skip 0x0000
            addCycles 1</pre>
        </div>
        <h3>
          <a class="anchor" name="case-expressions" href="#case-expressions">
</a>Case expressions
        </h3>
        <p>
          The alternatives in a case expression can be indented using either of the two following styles:
        </p>
        <div class="highlight">
          <pre>foobar = case something of
    Just j -&gt; foo
    Nothing -&gt; bar</pre>
        </div>
        <p>
          or as
        </p>
        <div class="highlight">
          <pre>foobar = case something of
             Just j -&gt; foo
             Nothing -&gt; bar</pre>
        </div>
        <p>
          Align the <code>-&gt;</code>&#160;arrows when it helps readability.
        </p>
        <h2>
          <a class="anchor" name="imports" href="#imports">
</a>Imports
        </h2>
        <p>
          Imports should be grouped in the following order:
        </p>
        <ol>
          <li>
            standard library imports
          </li>
          <li>
            related third party imports
          </li>
          <li>
            local application/library specific imports
          </li>
        </ol>
        <p>
          Put a blank line between each group of imports. The imports in each group should be sorted alphabetically, by module name.
        </p>
        <p>
          Always use explicit import lists or <code>qualified</code>&#160;imports for standard and third party libraries. This makes the code more robust against changes in these libraries. Exception: The Prelude.
        </p>
        <h2>
          <a class="anchor" name="comments" href="#comments">
</a>Comments
        </h2>
        <h3>
          <a class="anchor" name="punctuation" href="#punctuation">
</a>Punctuation
        </h3>
        <p>
          Write proper sentences; start with a capital letter and use proper punctuation.
        </p>
        <h3>
          <a class="anchor" name="top-level-definitions" href="#top-level-definitions">
</a>Top-Level Definitions
        </h3>
        <p>
          Comment every top level function (particularly exported functions), and provide a type signature; use Haddock syntax in the comments. Comment every exported data type. Function example:
        </p>
        <div class="highlight">
          <pre>-- | Send a message on a socket.  The socket must be in a connected
-- state.  Returns the number of bytes sent.  Applications are
-- responsible for ensuring that all data has been sent.
send :: Socket      -- ^ Connected socket
     -&gt; ByteString  -- ^ Data to send
     -&gt; IO Int      -- ^ Bytes sent</pre>
        </div>
        <p>
          For functions the documentation should give enough information to apply the function without looking at the function's definition.
        </p>
        <p>
          Record example:
        </p>
        <div class="highlight">
          <pre>-- | Bla bla bla.
data Person = Person
    { age  :: Int     -- ^ Age
    , name :: String  -- ^ First name
    }</pre>
        </div>
        <p>
          For fields that require longer comments format them like so:
        </p>
        <div class="highlight">
          <pre>data Record = Record
    { -- | This is a very very very long comment that is split over
      -- multiple lines.
      field1 :: Text

      -- | This is a second very very very long comment that is split
      -- over multiple lines.
    , field2 :: Int
    }</pre>
        </div>
        <h3>
          <a class="anchor" name="end-of-line-comments" href="#end-of-line-comments">
</a>End-of-Line Comments
        </h3>
        <p>
          Separate end-of-line comments from the code using 2 spaces. Align comments for data type definitions. Some examples:
        </p>
        <div class="highlight">
          <pre>data Parser = Parser
    Int         -- Current position
    ByteString  -- Remaining input

foo :: Int -&gt; Int
foo n = salt * 32 + 9
  where
    salt = 453645243  -- Magic hash salt.</pre>
        </div>
        <h3>
          <a class="anchor" name="links" href="#links">
</a>Links
        </h3>
        <p>
          Use in-line links economically. You are encouraged to add links for API names. It is not necessary to add links for all API names in a Haddock comment. We therefore recommend adding a link to an API name if:
        </p>
        <ul>
          <li>
            <p>
              The user might actually want to click on it for more information (in your judgment), and
            </p>
          </li>
          <li>
            <p>
              Only for the first occurrence of each API name in the comment (don't bother repeating a link)
            </p>
          </li>
        </ul>
        <h2>
          <a class="anchor" name="naming" href="#naming">
</a>Naming
        </h2>
        <p>
          Use mixed-case when naming functions and camel-case when naming data types.
        </p>
        <p>
          For readability reasons, don't capitalize all letters when using an abbreviation. For example, write <code>HttpServer</code>&#160;instead of <code>HTTPServer</code>. Exception: Two letter abbreviations, e.g. <code>IO</code>.
        </p>
        <h3>
          <a class="anchor" name="modules" href="#modules">
</a>Modules
        </h3>
        <p>
          Use singular when naming modules e.g. use <code>Data.Map</code>&#160;and <code>Data.ByteString.Internal</code>&#160; instead of <code>Data.Maps</code>&#160;and <code>Data.ByteString.Internals</code>.
        </p>
        <h2>
          <a class="anchor" name="misc" href="#misc">
</a>Misc
        </h2>
        <h3>
          <a class="anchor" name="warnings" href="#warnings">
</a>Warnings
        </h3>
        <p>
          Code should be compilable with <code>-Wall -Werror</code>. There should be no warnings.
        </p>
        </article>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352355446454" ID="ID_1814147976" MODIFIED="1352355449206" TEXT="Frameworks">
<node CREATED="1352355449390" ID="ID_1075026543" MODIFIED="1352355450319" TEXT="Web">
<node CREATED="1352355450526" ID="ID_259884965" MODIFIED="1352355452455" TEXT="Snap">
<node CREATED="1352355452764" ID="ID_838967349" LINK="http://snapframework.com/" MODIFIED="1352355452764" TEXT="snapframework.com"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1351282232054" FOLDED="true" ID="ID_623746360" MODIFIED="1351805796318" POSITION="left" TEXT="Deployments">
<node CREATED="1351282238887" ID="ID_120415" MODIFIED="1351282242768" TEXT="OpenShift">
<node CREATED="1351282248664" ID="ID_442738711" MODIFIED="1351282253614">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      RAILS Openshift
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;Root User: admin
    </p>
    <p>
      &#160;&#160;&#160;Root Password: uMjx3jr6lsLS
    </p>
    <p>
      &#160;&#160;&#160;Database Name: p
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1351526645882" ID="ID_1554595724" MODIFIED="1352231592087" POSITION="right" TEXT="Exercises">
<node CREATED="1351526653418" ID="ID_1728743931" MODIFIED="1351526657942" TEXT="r/dailyprogrammer">
<node CREATED="1351526658479" ID="ID_647828192" LINK="http://www.reddit.com/r/dailyprogrammer" MODIFIED="1351526658479" TEXT="reddit.com &gt; R &gt; Dailyprogrammer"/>
</node>
</node>
<node CREATED="1351574224361" FOLDED="true" ID="ID_1930095757" MODIFIED="1352219032290" POSITION="left" TEXT="Algorithms">
<node CREATED="1351574228936" ID="ID_1237642758" MODIFIED="1351574390594" TEXT="Voronoi Diagram/Triangulation">
<node CREATED="1351574251311" ID="ID_989574381" MODIFIED="1351574474821" TEXT="Fortune&apos;s">
<node CREATED="1351574258148" ID="ID_1924830779" LINK="https://en.wikipedia.org/wiki/Fortune%27s_algorithm" MODIFIED="1351574258148" TEXT="https://en.wikipedia.org/wiki/Fortune%27s_algorithm"/>
</node>
<node CREATED="1351574320475" ID="ID_1440036949" MODIFIED="1351574326004" TEXT="Delaunay Triangulation">
<node CREATED="1351574327327" ID="ID_755756519" LINK="https://en.wikipedia.org/wiki/Delaunay_triangulation" MODIFIED="1351574327327" TEXT="https://en.wikipedia.org/wiki/Delaunay_triangulation"/>
</node>
<node CREATED="1351574390942" ID="ID_1555133228" MODIFIED="1351574483714" TEXT="Lloyd&apos;s">
<node CREATED="1351574397818" ID="ID_162640505" LINK="https://en.wikipedia.org/wiki/Lloyd%27s_algorithm" MODIFIED="1351574397818" TEXT="https://en.wikipedia.org/wiki/Lloyd%27s_algorithm"/>
</node>
<node CREATED="1351574416500" ID="ID_525326231" MODIFIED="1351574492338" TEXT="Bowyer-Watson&apos;s">
<node CREATED="1351574431736" ID="ID_309938641" LINK="https://en.wikipedia.org/wiki/Bowyer%E2%80%93Watson_algorithm" MODIFIED="1351574431736" TEXT="https://en.wikipedia.org/wiki/Bowyer%E2%80%93Watson_algorithm"/>
</node>
</node>
<node CREATED="1351574457834" ID="ID_290865874" MODIFIED="1351575072664" TEXT="Graphs">
<node CREATED="1351574461466" ID="ID_1249407111" MODIFIED="1351574613906" TEXT="Shortest Path">
<node CREATED="1351574465121" ID="ID_1726772773" MODIFIED="1351574468155" TEXT="Djiktra&apos;s">
<node CREATED="1351574468712" ID="ID_793115922" LINK="https://en.wikipedia.org/wiki/Djikstra%27s_Algorithm" MODIFIED="1351574468712" TEXT="https://en.wikipedia.org/wiki/Djikstra%27s_Algorithm"/>
</node>
<node CREATED="1351574540381" ID="ID_1974510841" MODIFIED="1351574585747" TEXT="Bellman-Fords">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      single-source shortest paths in a weighted digraph
    </p>
  </body>
</html></richcontent>
<node CREATED="1351574551174" ID="ID_270833376" LINK="https://en.wikipedia.org/wiki/Bellman%E2%80%93Ford_algorithm" MODIFIED="1351574551174" TEXT="https://en.wikipedia.org/wiki/Bellman%E2%80%93Ford_algorithm"/>
</node>
</node>
<node CREATED="1351574972129" ID="ID_222179079" MODIFIED="1351575295657" TEXT="Traversal/Search">
<node CREATED="1351574768782" ID="ID_278244382" MODIFIED="1351574773991" TEXT="B*">
<node CREATED="1351574775591" ID="ID_1045304297" LINK="https://en.wikipedia.org/wiki/B*" MODIFIED="1351574775591" TEXT="https://en.wikipedia.org/wiki/B*"/>
</node>
<node CREATED="1351574623879" ID="ID_480152835" MODIFIED="1351574628049" TEXT="A*">
<node CREATED="1351574628386" ID="ID_242612694" LINK="https://en.wikipedia.org/wiki/A*_search_algorithm" MODIFIED="1351574628386" TEXT="https://en.wikipedia.org/wiki/A*_search_algorithm"/>
</node>
<node CREATED="1351575296381" ID="ID_1171926038" MODIFIED="1351575307918" TEXT="Depth-first Search">
<node CREATED="1351575308485" ID="ID_730029843" LINK="https://en.wikipedia.org/wiki/Depth-first_search" MODIFIED="1351575308485" TEXT="https://en.wikipedia.org/wiki/Depth-first_search"/>
</node>
</node>
<node CREATED="1351575073019" ID="ID_1280346483" MODIFIED="1351575081477" TEXT="Minimum Spanning Tree">
<node CREATED="1351574903702" ID="ID_969985263" MODIFIED="1351574910588" TEXT="Prim&apos;s">
<node CREATED="1351574911974" ID="ID_543931566" LINK="https://en.wikipedia.org/wiki/Prim%27s_algorithm" MODIFIED="1351574911974" TEXT="https://en.wikipedia.org/wiki/Prim%27s_algorithm"/>
</node>
<node CREATED="1351575155398" ID="ID_1843667645" MODIFIED="1351575160864" TEXT="Kruskal&apos;s">
<node CREATED="1351575161318" ID="ID_358757018" LINK="https://en.wikipedia.org/wiki/Kruskal%27s_algorithm" MODIFIED="1351575161318" TEXT="https://en.wikipedia.org/wiki/Kruskal%27s_algorithm"/>
</node>
</node>
</node>
<node CREATED="1351574526950" ID="ID_1450752892" MODIFIED="1351574531807" TEXT="Perbutation Theory">
<node CREATED="1351574532306" ID="ID_1136436152" LINK="https://en.wikipedia.org/wiki/Perturbation_theory" MODIFIED="1351574532306" TEXT="https://en.wikipedia.org/wiki/Perturbation_theory"/>
</node>
<node CREATED="1351575176325" ID="ID_477272962" MODIFIED="1351575179377" TEXT="Search"/>
<node CREATED="1351575596546" ID="ID_1193091749" MODIFIED="1351575598765" TEXT="Sorting">
<node CREATED="1351619910346" ID="ID_1090486124" MODIFIED="1351619914365" TEXT="Smoothsort"/>
<node CREATED="1351619916330" ID="ID_1300048933" MODIFIED="1351619918109" TEXT="Timsort"/>
</node>
</node>
<node CREATED="1351805812613" FOLDED="true" ID="ID_1963676445" MODIFIED="1352219041243" POSITION="right" TEXT="Machine Learning">
<node CREATED="1351805823636" ID="ID_882464205" MODIFIED="1351805827191" TEXT="Boltzmann">
<node CREATED="1351805816862" ID="ID_1233218335" LINK="https://en.wikipedia.org/wiki/Boltzmann_machine" MODIFIED="1351805816862" TEXT="https://en.wikipedia.org/wiki/Boltzmann_machine"/>
</node>
</node>
<node CREATED="1352154085408" ID="ID_1741839694" MODIFIED="1352154090137" POSITION="left" TEXT="Source Control">
<node CREATED="1352154090580" ID="ID_1434709597" MODIFIED="1352237885642" TEXT="Git">
<node CREATED="1352154092060" ID="ID_705279995" MODIFIED="1352154096571" TEXT="tutorial/primers">
<node CREATED="1352154097183" ID="ID_386852897" LINK="http://danielmiessler.com/study/git/" MODIFIED="1352154097183" TEXT="danielmiessler.com &gt; Study &gt; Git"/>
<node CREATED="1352237886600" FOLDED="true" ID="ID_1574251598" MODIFIED="1352237928903" TEXT="Hooks">
<node CREATED="1352237895547" ID="ID_153472316" MODIFIED="1352237912474">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre charset="utf-8" style="font-weight: normal; letter-spacing: normal; word-spacing: 0px; text-transform: none; text-align: start; font-style: normal; font-variant: normal; color: rgb(0, 0, 0); text-indent: 0px; line-height: normal; white-space: pre-wrap">Retrieved from [http://git.kernel.org/?p=git/git.git;a=blob_plain;f=contrib/hooks/post-receive-email;hb=HEAD git.kernel.org] on 2010-12-28. This is a confirmed working version.

{{{
#!/bin/sh
#
# Copyright (c) 2007 Andy Parkins
#
# An example hook script to mail out commit update information.  This hook
# sends emails listing new revisions to the repository introduced by the
# change being reported.  The rule is that (for branch updates) each commit
# will appear on one email and one email only.
#
# This hook is stored in the contrib/hooks directory.  Your distribution
# will have put this somewhere standard.  You should make this script
# executable then link to it in the repository you would like to use it in.
# For example, on debian the hook is stored in
# /usr/share/doc/git-core/contrib/hooks/post-receive-email:
#
#  chmod a+x post-receive-email
#  cd /path/to/your/repository.git
#  ln -sf /usr/share/doc/git-core/contrib/hooks/post-receive-email hooks/post-receive
#
# This hook script assumes it is enabled on the central repository of a
# project, with all users pushing only to it and not between each other.  It
# will still work if you don't operate in that style, but it would become
# possible for the email to be from someone other than the person doing the
# push.
#
# To help with debugging and use on pre-v1.5.1 git servers, this script will
# also obey the interface of hooks/update, taking its arguments on the
# command line.  Unfortunately, hooks/update is called once for each ref.
# To avoid firing one email per ref, this script just prints its output to
# the screen when used in this mode.  The output can then be redirected if
# wanted.
#
# Config
# ------
# hooks.mailinglist
#   This is the list that all pushes will go to; leave it blank to not send
#   emails for every ref update.
# hooks.announcelist
#   This is the list that all pushes of annotated tags will go to.  Leave it
#   blank to default to the mailinglist field.  The announce emails lists
#   the short log summary of the changes since the last annotated tag.
# hooks.envelopesender
#   If set then the -f option is passed to sendmail to allow the envelope
#   sender address to be set
# hooks.emailprefix
#   All emails have their subjects prefixed with this prefix, or &quot;[SCM]&quot;
#   if emailprefix is unset, to aid filtering
# hooks.showrev
#   The shell command used to format each revision in the email, with
#   &quot;%s&quot; replaced with the commit id.  Defaults to &quot;git rev-list -1
#   --pretty %s&quot;, displaying the commit id, author, date and log
#   message.  To list full patches separated by a blank line, you
#   could set this to &quot;git show -C %s; echo&quot;.
#   To list a gitweb/cgit URL *and* a full patch for each change set, use this:
#     &quot;t=%s; printf 'http://.../?id=%%s' \$t; echo;echo; git show -C \$t; echo&quot;
#   Be careful if &quot;...&quot; contains things that will be expanded by shell &quot;eval&quot;
#   or printf.
# hooks.emailmaxlines
#   The maximum number of lines that should be included in the generated
#   email body. If not specified, there is no limit.
#   Lines beyond the limit are suppressed and counted, and a final
#   line is added indicating the number of suppressed lines.
#
# Notes
# -----
# All emails include the headers &quot;X-Git-Refname&quot;, &quot;X-Git-Oldrev&quot;,
# &quot;X-Git-Newrev&quot;, and &quot;X-Git-Reftype&quot; to enable fine tuned filtering and
# give information for debugging.
#

# ---------------------------- Functions

#
# Function to prepare for email generation. This decides what type
# of update this is and whether an email should even be generated.
#
prep_for_email()
{
	# --- Arguments
	oldrev=$(git rev-parse $1)
	newrev=$(git rev-parse $2)
	refname=&quot;$3&quot;
	maxlines=$4

	# --- Interpret
	# 0000-&gt;1234 (create)
	# 1234-&gt;2345 (update)
	# 2345-&gt;0000 (delete)
	if expr &quot;$oldrev&quot; : '0*$' &gt;/dev/null
	then
		change_type=&quot;create&quot;
	else
		if expr &quot;$newrev&quot; : '0*$' &gt;/dev/null
		then
			change_type=&quot;delete&quot;
		else
			change_type=&quot;update&quot;
		fi
	fi

	# --- Get the revision types
	newrev_type=$(git cat-file -t $newrev 2&gt; /dev/null)
	oldrev_type=$(git cat-file -t &quot;$oldrev&quot; 2&gt; /dev/null)
	case &quot;$change_type&quot; in
	create|update)
		rev=&quot;$newrev&quot;
		rev_type=&quot;$newrev_type&quot;
		;;
	delete)
		rev=&quot;$oldrev&quot;
		rev_type=&quot;$oldrev_type&quot;
		;;
	esac

	# The revision type tells us what type the commit is, combined with
	# the location of the ref we can decide between
	#  - working branch
	#  - tracking branch
	#  - unannoted tag
	#  - annotated tag
	case &quot;$refname&quot;,&quot;$rev_type&quot; in
		refs/tags/*,commit)
			# un-annotated tag
			refname_type=&quot;tag&quot;
			short_refname=${refname##refs/tags/}
			;;
		refs/tags/*,tag)
			# annotated tag
			refname_type=&quot;annotated tag&quot;
			short_refname=${refname##refs/tags/}
			# change recipients
			if [ -n &quot;$announcerecipients&quot; ]; then
				recipients=&quot;$announcerecipients&quot;
			fi
			;;
		refs/heads/*,commit)
			# branch
			refname_type=&quot;branch&quot;
			short_refname=${refname##refs/heads/}
			;;
		refs/remotes/*,commit)
			# tracking branch
			refname_type=&quot;tracking branch&quot;
			short_refname=${refname##refs/remotes/}
			echo &gt;&amp;2 &quot;*** Push-update of tracking branch, $refname&quot;
			echo &gt;&amp;2 &quot;***  - no email generated.&quot;
			return 1
			;;
		*)
			# Anything else (is there anything else?)
			echo &gt;&amp;2 &quot;*** Unknown type of update to $refname ($rev_type)&quot;
			echo &gt;&amp;2 &quot;***  - no email generated&quot;
			return 1
			;;
	esac

	# Check if we've got anyone to send to
	if [ -z &quot;$recipients&quot; ]; then
		case &quot;$refname_type&quot; in
			&quot;annotated tag&quot;)
				config_name=&quot;hooks.announcelist&quot;
				;;
			*)
				config_name=&quot;hooks.mailinglist&quot;
				;;
		esac
		echo &gt;&amp;2 &quot;*** $config_name is not set so no email will be sent&quot;
		echo &gt;&amp;2 &quot;*** for $refname update $oldrev-&gt;$newrev&quot;
		return 1
	fi

	return 0
}

#
# Top level email generation function.  This calls the appropriate
# body-generation routine after outputting the common header.
#
# Note this function doesn't actually generate any email output, that is
# taken care of by the functions it calls:
#  - generate_email_header
#  - generate_create_XXXX_email
#  - generate_update_XXXX_email
#  - generate_delete_XXXX_email
#  - generate_email_footer
#
# Note also that this function cannot 'exit' from the script; when this
# function is running (in hook script mode), the send_mail() function
# is already executing in another process, connected via a pipe, and
# if this function exits without, whatever has been generated to that
# point will be sent as an email... even if nothing has been generated.
#
generate_email()
{
	# Email parameters
	# The email subject will contain the best description of the ref
	# that we can build from the parameters
	describe=$(git describe $rev 2&gt;/dev/null)
	if [ -z &quot;$describe&quot; ]; then
		describe=$rev
	fi

	generate_email_header

	# Call the correct body generation function
	fn_name=general
	case &quot;$refname_type&quot; in
	&quot;tracking branch&quot;|branch)
		fn_name=branch
		;;
	&quot;annotated tag&quot;)
		fn_name=atag
		;;
	esac

	if [ -z &quot;$maxlines&quot; ]; then
		generate_${change_type}_${fn_name}_email
	else
		generate_${change_type}_${fn_name}_email | limit_lines $maxlines
	fi

	generate_email_footer
}

generate_email_header()
{
	# --- Email (all stdout will be the email)
	# Generate header
	cat &lt;&lt;-EOF
	To: $recipients
	Subject: ${emailprefix}$projectdesc $refname_type $short_refname ${change_type}d. $describe
	X-Git-Refname: $refname
	X-Git-Reftype: $refname_type
	X-Git-Oldrev: $oldrev
	X-Git-Newrev: $newrev

	This is an automated email from the git hooks/post-receive script. It was
	generated because a ref change was pushed to the repository containing
	the project &quot;$projectdesc&quot;.

	The $refname_type, $short_refname has been ${change_type}d
	EOF
}

generate_email_footer()
{
	SPACE=&quot; &quot;
	cat &lt;&lt;-EOF


	hooks/post-receive
	--${SPACE}
	$projectdesc
	EOF
}

# --------------- Branches

#
# Called for the creation of a branch
#
generate_create_branch_email()
{
	# This is a new branch and so oldrev is not valid
	echo &quot;        at  $newrev ($newrev_type)&quot;
	echo &quot;&quot;

	echo $LOGBEGIN
	show_new_revisions
	echo $LOGEND
}

#
# Called for the change of a pre-existing branch
#
generate_update_branch_email()
{
	# Consider this:
	#   1 --- 2 --- O --- X --- 3 --- 4 --- N
	#
	# O is $oldrev for $refname
	# N is $newrev for $refname
	# X is a revision pointed to by some other ref, for which we may
	#   assume that an email has already been generated.
	# In this case we want to issue an email containing only revisions
	# 3, 4, and N.  Given (almost) by
	#
	#  git rev-list N ^O --not --all
	#
	# The reason for the &quot;almost&quot;, is that the &quot;--not --all&quot; will take
	# precedence over the &quot;N&quot;, and effectively will translate to
	#
	#  git rev-list N ^O ^X ^N
	#
	# So, we need to build up the list more carefully.  git rev-parse
	# will generate a list of revs that may be fed into git rev-list.
	# We can get it to make the &quot;--not --all&quot; part and then filter out
	# the &quot;^N&quot; with:
	#
	#  git rev-parse --not --all | grep -v N
	#
	# Then, using the --stdin switch to git rev-list we have effectively
	# manufactured
	#
	#  git rev-list N ^O ^X
	#
	# This leaves a problem when someone else updates the repository
	# while this script is running.  Their new value of the ref we're
	# working on would be included in the &quot;--not --all&quot; output; and as
	# our $newrev would be an ancestor of that commit, it would exclude
	# all of our commits.  What we really want is to exclude the current
	# value of $refname from the --not list, rather than N itself.  So:
	#
	#  git rev-parse --not --all | grep -v $(git rev-parse $refname)
	#
	# Get's us to something pretty safe (apart from the small time
	# between refname being read, and git rev-parse running - for that,
	# I give up)
	#
	#
	# Next problem, consider this:
	#   * --- B --- * --- O ($oldrev)
	#          \
	#           * --- X --- * --- N ($newrev)
	#
	# That is to say, there is no guarantee that oldrev is a strict
	# subset of newrev (it would have required a --force, but that's
	# allowed).  So, we can't simply say rev-list $oldrev..$newrev.
	# Instead we find the common base of the two revs and list from
	# there.
	#
	# As above, we need to take into account the presence of X; if
	# another branch is already in the repository and points at some of
	# the revisions that we are about to output - we don't want them.
	# The solution is as before: git rev-parse output filtered.
	#
	# Finally, tags: 1 --- 2 --- O --- T --- 3 --- 4 --- N
	#
	# Tags pushed into the repository generate nice shortlog emails that
	# summarise the commits between them and the previous tag.  However,
	# those emails don't include the full commit messages that we output
	# for a branch update.  Therefore we still want to output revisions
	# that have been output on a tag email.
	#
	# Luckily, git rev-parse includes just the tool.  Instead of using
	# &quot;--all&quot; we use &quot;--branches&quot;; this has the added benefit that
	# &quot;remotes/&quot; will be ignored as well.

	# List all of the revisions that were removed by this update, in a
	# fast-forward update, this list will be empty, because rev-list O
	# ^N is empty.  For a non-fast-forward, O ^N is the list of removed
	# revisions
	fast_forward=&quot;&quot;
	rev=&quot;&quot;
	for rev in $(git rev-list $newrev..$oldrev)
	do
		revtype=$(git cat-file -t &quot;$rev&quot;)
		echo &quot;  discards  $rev ($revtype)&quot;
	done
	if [ -z &quot;$rev&quot; ]; then
		fast_forward=1
	fi

	# List all the revisions from baserev to newrev in a kind of
	# &quot;table-of-contents&quot;; note this list can include revisions that
	# have already had notification emails and is present to show the
	# full detail of the change from rolling back the old revision to
	# the base revision and then forward to the new revision
	for rev in $(git rev-list $oldrev..$newrev)
	do
		revtype=$(git cat-file -t &quot;$rev&quot;)
		echo &quot;       via  $rev ($revtype)&quot;
	done

	if [ &quot;$fast_forward&quot; ]; then
		echo &quot;      from  $oldrev ($oldrev_type)&quot;
	else
		#  1. Existing revisions were removed.  In this case newrev
		#     is a subset of oldrev - this is the reverse of a
		#     fast-forward, a rewind
		#  2. New revisions were added on top of an old revision,
		#     this is a rewind and addition.

		# (1) certainly happened, (2) possibly.  When (2) hasn't
		# happened, we set a flag to indicate that no log printout
		# is required.

		echo &quot;&quot;

		# Find the common ancestor of the old and new revisions and
		# compare it with newrev
		baserev=$(git merge-base $oldrev $newrev)
		rewind_only=&quot;&quot;
		if [ &quot;$baserev&quot; = &quot;$newrev&quot; ]; then
			echo &quot;This update discarded existing revisions and left the branch pointing at&quot;
			echo &quot;a previous point in the repository history.&quot;
			echo &quot;&quot;
			echo &quot; * -- * -- N ($newrev)&quot;
			echo &quot;            \\&quot;
			echo &quot;             O -- O -- O ($oldrev)&quot;
			echo &quot;&quot;
			echo &quot;The removed revisions are not necessarilly gone - if another reference&quot;
			echo &quot;still refers to them they will stay in the repository.&quot;
			rewind_only=1
		else
			echo &quot;This update added new revisions after undoing existing revisions.  That is&quot;
			echo &quot;to say, the old revision is not a strict subset of the new revision.  This&quot;
			echo &quot;situation occurs when you --force push a change and generate a repository&quot;
			echo &quot;containing something like this:&quot;
			echo &quot;&quot;
			echo &quot; * -- * -- B -- O -- O -- O ($oldrev)&quot;
			echo &quot;            \\&quot;
			echo &quot;             N -- N -- N ($newrev)&quot;
			echo &quot;&quot;
			echo &quot;When this happens we assume that you've already had alert emails for all&quot;
			echo &quot;of the O revisions, and so we here report only the revisions in the N&quot;
			echo &quot;branch from the common base, B.&quot;
		fi
	fi

	echo &quot;&quot;
	if [ -z &quot;$rewind_only&quot; ]; then
		echo &quot;Those revisions listed above that are new to this repository have&quot;
		echo &quot;not appeared on any other notification email; so we list those&quot;
		echo &quot;revisions in full, below.&quot;

		echo &quot;&quot;
		echo $LOGBEGIN
		show_new_revisions

		# XXX: Need a way of detecting whether git rev-list actually
		# outputted anything, so that we can issue a &quot;no new
		# revisions added by this update&quot; message

		echo $LOGEND
	else
		echo &quot;No new revisions were added by this update.&quot;
	fi

	# The diffstat is shown from the old revision to the new revision.
	# This is to show the truth of what happened in this change.
	# There's no point showing the stat from the base to the new
	# revision because the base is effectively a random revision at this
	# point - the user will be interested in what this revision changed
	# - including the undoing of previous revisions in the case of
	# non-fast-forward updates.
	echo &quot;&quot;
	echo &quot;Summary of changes:&quot;
	git diff-tree --stat --summary --find-copies-harder $oldrev..$newrev
}

#
# Called for the deletion of a branch
#
generate_delete_branch_email()
{
	echo &quot;       was  $oldrev&quot;
	echo &quot;&quot;
	echo $LOGEND
	git show -s --pretty=oneline $oldrev
	echo $LOGEND
}

# --------------- Annotated tags

#
# Called for the creation of an annotated tag
#
generate_create_atag_email()
{
	echo &quot;        at  $newrev ($newrev_type)&quot;

	generate_atag_email
}

#
# Called for the update of an annotated tag (this is probably a rare event
# and may not even be allowed)
#
generate_update_atag_email()
{
	echo &quot;        to  $newrev ($newrev_type)&quot;
	echo &quot;      from  $oldrev (which is now obsolete)&quot;

	generate_atag_email
}

#
# Called when an annotated tag is created or changed
#
generate_atag_email()
{
	# Use git for-each-ref to pull out the individual fields from the
	# tag
	eval $(git for-each-ref --shell --format='
	tagobject=%(*objectname)
	tagtype=%(*objecttype)
	tagger=%(taggername)
	tagged=%(taggerdate)' $refname
	)

	echo &quot;   tagging  $tagobject ($tagtype)&quot;
	case &quot;$tagtype&quot; in
	commit)

		# If the tagged object is a commit, then we assume this is a
		# release, and so we calculate which tag this tag is
		# replacing
		prevtag=$(git describe --abbrev=0 $newrev^ 2&gt;/dev/null)

		if [ -n &quot;$prevtag&quot; ]; then
			echo &quot;  replaces  $prevtag&quot;
		fi
		;;
	*)
		echo &quot;    length  $(git cat-file -s $tagobject) bytes&quot;
		;;
	esac
	echo &quot; tagged by  $tagger&quot;
	echo &quot;        on  $tagged&quot;

	echo &quot;&quot;
	echo $LOGBEGIN

	# Show the content of the tag message; this might contain a change
	# log or release notes so is worth displaying.
	git cat-file tag $newrev | sed -e '1,/^$/d'

	echo &quot;&quot;
	case &quot;$tagtype&quot; in
	commit)
		# Only commit tags make sense to have rev-list operations
		# performed on them
		if [ -n &quot;$prevtag&quot; ]; then
			# Show changes since the previous release
			git rev-list --pretty=short &quot;$prevtag..$newrev&quot; | git shortlog
		else
			# No previous tag, show all the changes since time
			# began
			git rev-list --pretty=short $newrev | git shortlog
		fi
		;;
	*)
		# XXX: Is there anything useful we can do for non-commit
		# objects?
		;;
	esac

	echo $LOGEND
}

#
# Called for the deletion of an annotated tag
#
generate_delete_atag_email()
{
	echo &quot;       was  $oldrev&quot;
	echo &quot;&quot;
	echo $LOGEND
	git show -s --pretty=oneline $oldrev
	echo $LOGEND
}

# --------------- General references

#
# Called when any other type of reference is created (most likely a
# non-annotated tag)
#
generate_create_general_email()
{
	echo &quot;        at  $newrev ($newrev_type)&quot;

	generate_general_email
}

#
# Called when any other type of reference is updated (most likely a
# non-annotated tag)
#
generate_update_general_email()
{
	echo &quot;        to  $newrev ($newrev_type)&quot;
	echo &quot;      from  $oldrev&quot;

	generate_general_email
}

#
# Called for creation or update of any other type of reference
#
generate_general_email()
{
	# Unannotated tags are more about marking a point than releasing a
	# version; therefore we don't do the shortlog summary that we do for
	# annotated tags above - we simply show that the point has been
	# marked, and print the log message for the marked point for
	# reference purposes
	#
	# Note this section also catches any other reference type (although
	# there aren't any) and deals with them in the same way.

	echo &quot;&quot;
	if [ &quot;$newrev_type&quot; = &quot;commit&quot; ]; then
		echo $LOGBEGIN
		git show --no-color --root -s --pretty=medium $newrev
		echo $LOGEND
	else
		# What can we do here?  The tag marks an object that is not
		# a commit, so there is no log for us to display.  It's
		# probably not wise to output git cat-file as it could be a
		# binary blob.  We'll just say how big it is
		echo &quot;$newrev is a $newrev_type, and is $(git cat-file -s $newrev) bytes long.&quot;
	fi
}

#
# Called for the deletion of any other type of reference
#
generate_delete_general_email()
{
	echo &quot;       was  $oldrev&quot;
	echo &quot;&quot;
	echo $LOGEND
	git show -s --pretty=oneline $oldrev
	echo $LOGEND
}


# --------------- Miscellaneous utilities

#
# Show new revisions as the user would like to see them in the email.
#
show_new_revisions()
{
	# This shows all log entries that are not already covered by
	# another ref - i.e. commits that are now accessible from this
	# ref that were previously not accessible
	# (see generate_update_branch_email for the explanation of this
	# command)

	# Revision range passed to rev-list differs for new vs. updated
	# branches.
	if [ &quot;$change_type&quot; = create ]
	then
		# Show all revisions exclusive to this (new) branch.
		revspec=$newrev
	else
		# Branch update; show revisions not part of $oldrev.
		revspec=$oldrev..$newrev
	fi

	other_branches=$(git for-each-ref --format='%(refname)' refs/heads/ |
	    grep -F -v $refname)
	git rev-parse --not $other_branches |
	if [ -z &quot;$custom_showrev&quot; ]
	then
		git rev-list --pretty --stdin $revspec
	else
		git rev-list --stdin $revspec |
		while read onerev
		do
			eval $(printf &quot;$custom_showrev&quot; $onerev)
		done
	fi
}


limit_lines()
{
	lines=0
	skipped=0
	while IFS=&quot;&quot; read -r line; do
		lines=$((lines + 1))
		if [ $lines -gt $1 ]; then
			skipped=$((skipped + 1))
		else
			printf &quot;%s\n&quot; &quot;$line&quot;
		fi
	done
	if [ $skipped -ne 0 ]; then
		echo &quot;... $skipped lines suppressed ...&quot;
	fi
}


send_mail()
{
	if [ -n &quot;$envelopesender&quot; ]; then
		/usr/sbin/sendmail -t -f &quot;$envelopesender&quot;
	else
		/usr/sbin/sendmail -t
	fi
}

# ---------------------------- main()

# --- Constants
LOGBEGIN=&quot;- Log -----------------------------------------------------------------&quot;
LOGEND=&quot;-----------------------------------------------------------------------&quot;

# --- Config
# Set GIT_DIR either from the working directory, or from the environment
# variable.
GIT_DIR=$(git rev-parse --git-dir 2&gt;/dev/null)
if [ -z &quot;$GIT_DIR&quot; ]; then
	echo &gt;&amp;2 &quot;fatal: post-receive: GIT_DIR not set&quot;
	exit 1
fi

projectdesc=$(sed -ne '1p' &quot;$GIT_DIR/description&quot;)
# Check if the description is unchanged from it's default, and shorten it to
# a more manageable length if it is
if expr &quot;$projectdesc&quot; : &quot;Unnamed repository.*$&quot; &gt;/dev/null
then
	projectdesc=&quot;UNNAMED PROJECT&quot;
fi

recipients=$(git config hooks.mailinglist)
announcerecipients=$(git config hooks.announcelist)
envelopesender=$(git config hooks.envelopesender)
emailprefix=$(git config hooks.emailprefix || echo '[SCM] ')
custom_showrev=$(git config hooks.showrev)
maxlines=$(git config hooks.emailmaxlines)

# --- Main loop
# Allow dual mode: run from the command line just like the update hook, or
# if no arguments are given then run as a hook script
if [ -n &quot;$1&quot; -a -n &quot;$2&quot; -a -n &quot;$3&quot; ]; then
	# Output to the terminal in command line mode - if someone wanted to
	# resend an email; they could redirect the output to sendmail
	# themselves
	prep_for_email $2 $3 $1 &amp;&amp; PAGER= generate_email
else
	while read oldrev newrev refname
	do
		prep_for_email $oldrev $newrev $refname || continue
		generate_email $maxlines | send_mail
	done
fi
}}}</pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</map>

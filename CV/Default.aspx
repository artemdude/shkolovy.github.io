<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CV.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Artem Shkolovyi - .Net Developer</title>

    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="Scripts/tinysort.js" type="text/javascript"></script>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <script>

        $(document).ready(function () {

            // create a style switch button
            $('#ChangeCloudAppearance').toggle(
		        function () {
		            $("#tags ul").hide().addClass("alt").fadeIn("fast");
		        },
		        function () {
		            $("#tags ul").hide().removeClass("alt").fadeIn("fast");
		        }
	        );


            // create a sort by alphabet button
            $('#sortCloudByAlphabet').toggle(
		        function () {
		            $("#tags ul li").tsort({ order: "asc" });
		            $(this).addClass('filter-selected');
		            $('#SortCloudByStrength').removeClass('filter-selected');
		        },
		        function () {
		            $("#tags ul li").tsort({ order: "desc" });
		            $(this).addClass('filter-selected');
		            $('#SortCloudByStrength').removeClass('filter-selected');
		        }
		    );

            $('#SortCloudByStrength').toggle(
		        function () {
		            $("#tags ul li").tsort({ order: "desc", attr: "level" });
		            $(this).addClass('filter-selected');
		            $('#sortCloudByAlphabet').removeClass('filter-selected');
		        },
		        function () {
		            $("#tags ul li").tsort({ order: "asc", attr: "level" });
		            $(this).addClass('filter-selected');
		            $('#sortCloudByAlphabet').removeClass('filter-selected');
		        }
		    );


        });
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="wrapper">
            <div style="position: relative;">
                <a href="" class="print-version">Print version</a>
            </div>
            <div id="head">
                <img style="" alt="Artem Shkolovyi" src="Img/Ya.png" />
                <div id="contacts" style="padding: 10px 0; text-align: center;">
                    <strong>Contacts</strong>
                    <ul>
                        <li><a href="mailto:artemdude@gmail.com">artemdude@gmail.com</a></li>
                        <li><a href="http://shkolovy.com/blog/">Personal Blog</a></li>
                        <li><a href="http://www.facebook.com/artemiy">Facebook</a></li>
                        <li><a href="http://ua.linkedin.com/in/shkolovy">LinkedIn</a></li>
                        <li><a href="http://www.shkolovy.com/portfolio/">Portfolio 1</a> | <a href="http://www.junkystudio.com.ua/#portfolio">
                            Portfolio 2</a></li>
                    </ul>
                </div>
            </div>
            <div id="about">
                <h1>
                    Artem Shkolovyi</h1>
                <h3>
                    <%--font-family:mono-space,monospace;--%>
                    {<span style="color: #000088; font-family: Consolas;">No day without code</span>}</h3>
                <%--         <ul class="cicle-list">
                    <li>4 years as ASP.NET Developer</li>
                    <li>Working process understanding</li>
                    <li>Usability design</li>
                    <li>Web design</li>
                    <li>Creative ability</li>
                </ul>--%>
                <span class="comment">//Something about me</span>
                <br />
                <span style="font-size: 1.3em;">Hi!</span> My name is Artem and I'm <span title="23"
                    style="border-bottom: 1px dotted; cursor: help;">010111</span> years old.<br />
                My <span style="font-size: 1.3em;">first web site</span> was created when I was
                at school. Since that time web development has become my hobby, then an additional
                income, and now it is my main job. <span style="font-size: 1.6em;">Programming is my
                    obsession.</span> During the time of working in various outsourcing companies
                I have got experience in development, testing, refactoring and usability design.
                I participated in developing of closed CMS systems and web sites which were designed
                for a wide audience.
                <br />
                I want to work with <span style="font-size: 1.3em;">really interesting</span> projects!
                If you have one, <strong><a href="mailto:artemdude@gmail.com">contact me</a></strong>!
                <div id="odesk" style="text-align: center">
                    <a href="https://www.odesk.com/users/~~ef5777505a831587">
                        <img src="Img/odesk_hire_me.jpg" width="242" height="142" alt="Hire me on Odesk"
                            style="margin: 30px 0"></a></div>
            </div>
            <div style="clear: both;">
            </div>
            <div>
                <div style="height: 20px;">
                </div>
                <div class="cv-block">
                    <h2 style="background: #d4e99d;">
                        Skills</h2>
                    <span><strong>Sort:</strong></span> (<span id="sortCloudByAlphabet" class="filter">A
                        → Z</span> | <span id="SortCloudByStrength" class="filter">excellent → poor</span>)
                    <div style="clear: both;">
                    </div>
                    <div>
                        <div style="width: 100px; border-right: 1px dotted #ccc; text-align: right; float: left;
                            padding: 0 10px 0 0; margin-left: -118px;">
                            <span class="excellent">excellent</span><br>
                            <span class="good">good</span><br>
                            <span class="average">average</span><br>
                            <span class="poor">poor</span>
                        </div>
                    </div>
                    <div style="padding: 0 0 0 10px;" id="side">
                        <div id="tags">
                            <ul>
                                <li level="0" class="poor">Subversion</li>
                                <li level="0" class="poor">CSS</li>
                                <li level="0" class="poor">CSS3</li>
                                <li level="0" class="poor">HTML</li>
                                <li level="0" class="poor">HTML5 </li>
                                <li level="0" class="poor">JavaScript </li>
                                <li level="0" class="poor">OOP </li>
                                <li level="0" class="poor">C#</li>
                                <li level="0" class="poor">AJAX</li>
                                <li level="0" class="poor">MySQL </li>
                                <li level="0" class="poor">.NET</li>
                                <li level="0" class="poor">jQuery</li>
                                <li level="0" class="poor">JIRA</li>
                                <li level="0" class="poor">SQL</li>
                                <li level="0" class="poor">Server </li>
                                <li level="0" class="poor">SQL</li>
                                <li level="0" class="poor">Linux</li>
                                <li level="0" class="poor">Web </li>
                                <li level="0" class="poor">Development</li>
                                <li level="0" class="poor">Programming</li>
                                <li level="0" class="poor">Windows </li>
                                <li level="0" class="poor">ASP.NET </li>
                                <li level="0" class="poor">Software</li>
                                <li level="0" class="poor">Development</li>
                                <li level="0" class="poor">ADO.NET </li>
                                <li level="0" class="poor">WCF</li>
                                <li level="0" class="poor">Web Services</li>
                                <li level="0" class="poor">LINQ to SQL</li>
                                <li level="0" class="poor">Visual Studio</li>
                                <li level="0" class="poor">NHibernate</li>
                                <li level="0" class="poor">Log4Net</li>
                                <li level="0" class="poor">ReSharper</li>
                                <li level="0" class="poor">NAnt</li>
                                <li level="0" class="poor">Hudson </li>
                                <li level="0" class="poor">ASP.NET MVC </li>
                                <li level="0" class="poor">Continuous Integration </li>
                                <li level="0" class="poor">ASP.NET AJAX</li>
                                <li level="0" class="poor">TFS </li>
                                <li level="0" class="poor">Unit Testing</li>
                                <li level="0" class="poor">Design Patterns</li>
                                <li level="0" class="poor">ORM </li>
                                <li level="0" class="poor">Tortoise SVN </li>
                                <li level="0" class="poor">JSON</li>
                                <li level="0" class="poor">Scrum </li>
                                <li level="0" class="poor">Spring.Net</li>
                                <li level="0" class="poor">Agile</li>
                                <li level="0" class="poor">IIS </li>
                                <li level="0" class="poor">XML </li>
                                <li level="0" class="poor">Refactoring </li>
                                <li level="0" class="poor">Entity Framework</li>
                                <li level="0" class="poor">Mercurial </li>
                                <li level="0" class="poor">Git</li>
                                <li level="0" class="poor">vbscript </li>
                                <li level="0" class="poor">asp classic</li>
                                <li level="0" class="poor">Backbone.js</li>
                                <li level="0" class="poor">Dolor sit amet</li>
                                <li level="1" class="average">Consectetur adipiscing elit</li>
                                <li level="0" class="poor">Proin</li>
                                <li level="2" class="good">Sagittis libero</li>
                                <li level="3" class="excellent">Consequat</li>
                                <li level="0" class="poor">Dictum non</li>
                                <li level="1" class="average">Suspendisse mauris</li>
                                <li level="2" class="good">In accumsan </span></li>
                                <li level="3" class="excellent">auris eget felis</li>
                                <li level="0" class="poor">Suspendisse</a></li>
                                <li level="0" class="poor">condimentum eleifend nulla</li>
                            </ul>
                        </div>
                    </div>
                    <%-- <span id="ChangeCloudAppearance" class="">ChangeCloudAppearance</span>--%>
                    <%-- <span id="sortCloudByAlphabet" class="">Sort alphabetically</span>

                  <span id="SortCloudByStrength" class="">Sort by strength</span>
                    --%>
                    <div style="clear: both;">
                    </div>
                </div>
                <div class="cv-block">
                    <h2 style="background: #efe7e4">
                        Work Experience</h2>
                    <div style="clear: both;">
                    </div>
                    <img style="margin: 0 0 10px 10px; float: right;" src="Img/work.jpg" />
                    <div class="job-block">
                        <h4>
                            <a href="http://www.ciklum.net/">Ciklum</a></h4>
                        <div class="job-data">
                            .Net Developer, January 2012 – Present</div>
                        I have a big opportunity to work in huge company, which has several thousand employees
                        around the world. The project which I'm working on is Ricardo. It is a network of
                        online auctions in West Europe. The heart of company is located in Zurich.
                        <div class="used-technologies">
                            <span class="comment">//Used technologies:</span><br />
                            Asp classic, ASP.NET Web Forms, HTML ,XML,ASP.NET MVC, TFS, JavaScript, WCF, MSSQL,
                            Stored Procedures.
                        </div>
                    </div>
                    <div class="job-block">
                        <h4>
                            <a href="http://www.dms-consulting.com/">DMS Consutling</a></h4>
                        <div class="job-data">
                            .Net Developer, March 2011 – Present</div>
                        I was involved in developing of CMS system, which specializes in determining of
                        target audience for a number of famous TV channel. I was responsible for support,
                        refactoring and adding new features to existing web application.
                        <div class="used-technologies">
                            <span class="comment">//Project based on:</span><br />
                            Framework 4.0, ASP.NET Web Forms, HTML, ASP.NET Ajax, Javascript, WCF, MySQL, ,
                            ReSharper, ADO.NET, DevExpress,TFS, JIRA ,Mercury, JQuery
                        </div>
                    </div>
                    <div class="job-block">
                        <h4>
                            <a href="http://ncube.co.uk/">NCube Ltd.</a></h4>
                        <div class="job-data">
                            Software Developer, June 2009 – March 2011</div>
                        Throughout the period of work for this company I developed web site which is dedicated
                        to selling e-tickets to various events from small like a beer party to big like
                        a concert of 30 Seconds to Mars.
                        <div class="used-technologies">
                            <span class="comment">//Used technologies, tools and methodologies:</span><br />
                            Framework 2.0-3.5, ASP.NET,NHibernate, HTML, AJAX, Javascript, Web Services, MSSQL,
                            Tortoise SVN, JIRA, ReSharper, Continious Integration (Hudson), SCRUM,Common.Logging/Log4Net,
                            Spring.NET.
                        </div>
                    </div>
                    <span style="margin:0 5px 0 -21px;">&rarr;</span><a href="http://ua.linkedin.com/in/shkolovy">More about my expirience on LinkedIn</a>
                    <div style="clear: both;">
                    </div>
                </div>
                <div class="cv-block">
                    <h2 style="background: #fbd885;">
                        Education</h2>
                    <div style="clear: both;">
                    </div>
                    <img style="margin: 0 10px 10px 0; float: left;" src="Img/study.jpg" />
                  I graduated the National Aviation University by specialty "Faculty of Telecommunication and Security Information». But honestly, it was boring :)
                  <br /><br />
I can't imagine my life without informational technologies. Books, blogs, workshops, conferences - this is my main source of knowledge. Sometimes I publish articles to <a href="http://shkolovy.com/blog/">my blog</a> or begin to code some small program, just for fun.
But the most valuable knowledge I get on my job, when I have some dispute with my colleagues or when I encounter with some new technology which is need to be learnt and introduced into the project.
                  <br />
                 <div style=" font-style:italic; text-align:right; padding-top:5px;">"Live and learn..."</div>  
                  
                    <div style="clear: both;">
                    </div>
                </div>
                <div class="cv-block">
                    <h2 style="background: #9dd4e9;">
                        Hobby And Other Activity</h2>
                    <div style="clear: both;">
                    </div>
                    <img style="margin: 0 0 10px 10px; float: right;" src="Img/hobby.jpg" />
                    In software engineering, a design pattern is a general repeatable solution to a
                    commonly occurring problem in software design. A design pattern isn't a finished
                    design that can be transformed directly into code. It is a description or template
                    for how to solve a problem that can be used in many different situations. Unified
                    Modeling Language makes it possible to describe systems with words and pictures.
                    It can be used to model a variety of systems: software systems, business systems,
                    or any other system.
                    <div style="clear: both;">
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            I
            <img src="Img/heart.png" />
            coding...
        </div>
    </div>
    </form>
</body>
</html>

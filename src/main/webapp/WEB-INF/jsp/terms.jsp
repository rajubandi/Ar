<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
<link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/flaticon.css" rel="stylesheet">
    <link href="css/plugin.css" rel="stylesheet">
    <link href="css/inner-style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
   
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900|Oswald:400,300,700' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
	/*------ Tables -----*/

.table, .text-wrap table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 1rem;
}
.table th, .text-wrap table th, .text-wrap table td {
	padding: 0.75rem;
	vertical-align: top;
	border-top: 1px solid rgba(167, 180, 201,.3);
}
.table td {
	padding: 0.75rem;
	vertical-align: top;
	border-top: 0;
}
.border {
	padding: 0.75rem;
	vertical-align: top;
	border: 1px solid rgba(167, 180, 201,.3);
}
.table thead th, .text-wrap table thead th {
	vertical-align: bottom;
	border-bottom: 2px solid rgba(167, 180, 201,.3);
}
.table tbody+tbody, .text-wrap table tbody+tbody {
	border-top: 2px solid rgba(167, 180, 201,.3);
}
.table .table, .text-wrap table .table, .table .text-wrap table, .text-wrap .table table, .text-wrap table table {
	background-color: #f9faff;
}
.table-sm th, .table-sm td {
	padding: 0.3rem;
}
.table-bordered, .text-wrap table {
	border: 1px solid rgba(167, 180, 201,.3);
}
.table-bordered th, .text-wrap table th, .table-bordered td, .text-wrap table td {
	border: 1px solid rgba(167, 180, 201,.3);
}
.table-bordered thead th, .text-wrap table thead th, .table-bordered thead td, .text-wrap table thead td {
	border-bottom-width: 2px;
}
.table-borderless th, .table-borderless td, .table-borderless thead th, .table-borderless tbody+tbody {
	border: 0;
}
.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(0, 0, 0, 0.02);
}
.table-hover tbody tr:hover {
	background-color: #f9faff;
}
.table-primary, .table-primary>th, .table-primary>td {
	background-color: #e6f2fe;
}
.table-hover .table-primary:hover {
	background-color: #b7cded;
}
.table-hover .table-primary:hover>td, .table-hover .table-primary:hover>th {
	background-color: #b7cded;
}
.table-secondary, .table-secondary>th, .table-secondary>td {
	background-color: #dddfe2;
}
.table-hover .table-secondary:hover {
	background-color: #cfd2d6;
}
.table-hover .table-secondary:hover>td, .table-hover .table-secondary:hover>th {
	background-color: #cfd2d6;
}
.table-success, .table-success>th, .table-success>td {
	background-color: #c9fde7;
}
.table-hover .table-success:hover {
	background-color: #c5e7a4;
}
.table-hover .table-success:hover>td, .table-hover .table-success:hover>th {
	background-color: #c5e7a4;
}
.table-info, .table-info>th, .table-info>td {
	background-color: #cbe7fb;
}
.table-hover .table-info:hover {
	background-color: #b3dcf9;
}
.table-hover .table-info:hover>td, .table-hover .table-info:hover>th {
	background-color: #b3dcf9;
}
.table-warning, .table-warning>th, .table-warning>td {
	background-color: #fbeebc;
}
.table-hover .table-warning:hover {
	background-color: #fae8a4;
}
.table-hover .table-warning:hover>td, .table-hover .table-warning:hover>th {
	background-color: #fae8a4;
}
.table-danger, .table-danger>th, .table-danger>td {
	background-color: #f1c1c0;
}
.table-hover .table-danger:hover {
	background-color: #ecacab;
}
.table-hover .table-danger:hover>td, .table-hover .table-danger:hover>th {
	background-color: #ecacab;
}
.table-light, .table-light>th, .table-light>td {
	background-color: #fdfdfe;
}
.table-hover .table-light:hover {
	background-color: #ececf6;
}
.table-hover .table-light:hover>td, .table-hover .table-light:hover>th {
	background-color: #ececf6;
}
.table-dark, .table-dark>th, .table-dark>td {
	background-color: #c6c8ca;
}
.table-hover .table-dark:hover {
	background-color: #b9bbbe;
}
.table-hover .table-dark:hover>td, .table-hover .table-dark:hover>th {
	background-color: #b9bbbe;
}
.table-active, .table-active>th, .table-active>td {
	background-color: rgba(0, 0, 0, 0.04);
}
.table-hover .table-active:hover {
	background-color: rgba(0, 0, 0, 0.04);
}
.table-hover .table-active:hover>td, .table-hover .table-active:hover>th {
	background-color: rgba(0, 0, 0, 0.04);
}
.table .thead-dark th, .text-wrap table .thead-dark th {
	color: #f9faff;
	background-color: #a7b4c9;
	border-color: #32383e;
}
.table .thead-light th, .text-wrap table .thead-light th {
	color: #3d4e67;
	background-color: rgba(167, 180, 201,.3);
	border-color: rgba(167, 180, 201,.3);
}
.table-dark {
	color: #f9faff;
	background-color: #a7b4c9;
}
.table-dark th, .table-dark td, .table-dark thead th {
	border-color: #32383e;
}
.table-dark.table-bordered, .text-wrap table.table-dark {
	border: 0;
}
.table-dark.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(255, 255, 255, 0.05);
}
.table-dark.table-hover tbody tr:hover {
	background-color: rgba(255, 255, 255, 0.075);
}
@media (max-width: 575.98px) {
	.table-responsive-sm {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-sm>.table-bordered, .text-wrap .table-responsive-sm>table {
		border: 0;
	}
}
@media (max-width: 767.98px) {
	.table-responsive-md {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-md>.table-bordered, .text-wrap .table-responsive-md>table {
		border: 0;
	}
}
@media (max-width: 991.98px) {
	.table-responsive-lg {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-lg>.table-bordered, .text-wrap .table-responsive-lg>table {
		border: 0;
	}
}
@media (max-width: 1279.98px) {
	.table-responsive-xl {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-xl>.table-bordered, .text-wrap .table-responsive-xl>table {
		border: 0;
	}
}
.table-responsive {
	display: block;
	width: 100%;
	overflow-x: auto;
	-webkit-overflow-scrolling: touch;
	-ms-overflow-style: -ms-autohiding-scrollbar;
}
.table-responsive>.table-bordered, .text-wrap .table-responsive>table {
	border: 0;
}
.careerfy-joblisting-classic-wrap {
    background-color: #ffffff;
    border: 1px solid #ececec;
    padding: 8px 19px 13px 14px;
}
.navbar-nav li:hover > a, .navbar-nav li.active a {
    background: #c9d9ea;
    color: #fff;
    border-bottom: #25b5b8 solid 5px;
}
.navbar-nav .sub-menu li:hover > a, .navbar-nav .sub-menu li.active a {
    background: #fff;
    color: #000;
    border-bottom: #000 solid 1px;
}
.navbar-nav > li > a {
    padding: 10x 5px;
}
.navbar-nav > li > a {
    padding: 21px 24px;
    color: #000;
    text-decoration: none;
    display: block;
    text-transform: uppercase;
    -webkit-transition: color 0.2s linear, background 0.2s linear;
    -moz-transition: color 0.2s linear, background 0.2s linear;
    -o-transition: color 0.2s linear, background 0.2s linear;
    transition: color 0.2s linear, background 0.2s linear;
}
.table > thead:first-child > tr:first-child > th{
	color:#585555;}
	.form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.form-group {
    margin-bottom: 15px;
}
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 700;
}
.btn-default {
    color: #333;
    background-color: #fff;
    border-color: #ccc;
}
.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
    background-color: #f2f2f2;
    border: none;
    color: #666;
    display: inline-block;
    font-size: 13px;
    height: 30px;
    line-height: 20px;
    outline: none;
    padding: 22px 6px;
    vertical-align: middle;
    box-shadow: none;
}
	</style>
	 <style>
	p{
	color:#050505;
	text-align:justify;
	}
	.careerfy-joblisting-classic-wrap{
	padding:30px;
	}
	
	</style>
  <!-- SubHeader -->
        <div class="careerfy-subheader">
            <span class="careerfy-banner-transparent"></span>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="careerfy-page-title">
                            <h1>TERMS & CONDITIONS</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- SubHeader -->

        <!-- Main Content -->
        <div class="careerfy-main-content">
            
            <!-- Main Section -->
            <div class="careerfy-main-section ">
                <div class="container">
                    <div class="row">

                        

                    </div>
                </div>
            </div>
            <!-- Main Section -->

            <!-- Main Section -->
            <div class="careerfy-main-section" style="margin-top:25px;">
                <div class="container">
                    <div class="row">
                        
                       
                        
                        
                        
                        
                        
                        
                        <div class="careerfy-column-12 careerfy-typo-wrap">
                            <div class="careerfy-typo-wrap">
                                <!-- FilterAble -->
                            
                                <!-- FilterAble -->
                                <!-- JobGrid -->
                                <div class="careerfy-job careerfy-joblisting-classic">
                                    <div class="careerfy-joblisting-classic-wrap"><p><b>                                               TERMS & CONDITIONS</b></p>
<p ><b>1.	GENERAL</b><br>
'www.amaravatirealtors.com' (hereinafter, the 'Website') is owned and operated by Avenue Realty, (hereinafter referred to as 'Company'), a Partnership Firm, having its registered office at Vijayawada, Andhra Pradesh, India.</p>
<p>This document is an electronic record published in accordance with the provisions of the Information Technology (Intermediaries guidelines) Rules, 2011 that require publishing the Rules and Regulations, Privacy Policy and Terms of Service for access or usage of the website and being generated by a computer system, it does not require any physical or digital signatures.</p>
<p>For the purpose of these Terms of Use, along with any amendments to the same, and wherever the context so requires</p>
<p>shall mean and refer to the person visiting, accessing, browsing through and/or using the Website at any point in time and shall include the Clients/Customers. </p>
<p>The term  shall mean and refer to the website and/or the Company, depending on the context.</p>
<p>The headings of each section in this Agreement are only for the purpose of organizing the various provisions under this Agreement in an orderly manner. These headings shall not be used by either party to interpret the provisions contained under them in any manner. Further, the headings have no legal or contractual value.</p>
<p>We hold the sole right to modify the Terms of Service without prior permission from You or providing notice to You. The relationship creates on You a duty to periodically check the Terms of Service and stay updated on its requirements. If You continue to use the Website or avail any of its services without registration following such change, this is deemed as consent by You to the so amended policies. Your continued use of the Website is conditioned upon your compliance with the Terms of Service, including but not limited to compliance with the Terms of Service even after alterations, if any.</p>
<p><b>2.	ABOUT  US</b><br>
Avenue Realty is a complete realty solution that aggregates end-to-end property services for property seekers. We undertake the responsibility of identifying, validating and certifying the authenticity of a property as a sound investment option. We have launched our operations in new capital of Andhra Pradesh ‘Amaravati’ which includes providing investment advice related to property and other allied solutions.<br>
The maps and other related information used on the website are sourced from the Andhra Pradesh Capital Region Development Authority (APCRDA) and Government of Andhra Pradesh.</p>
<p><b>3.	REGISTRATION</b><br>
To use some of the services provided on the Website, you shall register yourself on the Website. To create an account, you need to provide your email id and choose a username and password. You must keep your account and registration details current and correct for communications from the Website.<br>
Information collected about you is subject to the Privacy Policy of the Company, which may be read as part and parcel of these Terms of Use.<br>
You are solely responsible for protecting the confidentiality of your username and password and any activity under the account will be deemed to have been done by you. In the event you provide us with false/inaccurate details or the Company has a reasonable ground to believe that false and inaccurate information has been furnished, we hold the right to permanently suspend your account.</p>
<p><b>4.	ELIGIBILITY</b><br>
Services on the Site would be available pan India. However, some features of the Site shall only be available in select cities in India. Persons who are “incompetent to contract” within the meaning of the Indian Contract Act, 1872 including minors, un-discharged insolvents etc. are not eligible to use the Site.</p>
<p>However, if you are a minor, i.e. under the age of 18 years and over the age of 13 years, you may use the Site under the supervision of a parent or legal guardian who agrees to be bound by these Terms of Use. We reserve the right to terminate or refuse your registration, or refuse to permit access to the Site, if it is discovered or brought to its notice that you are a minor. </p>
<p>The user agrees that even though the website targets only Indian residents, it may be accessible to people in other parts of the world given the nature of the Internet. If the user is not an Indian resident and yet uses the website, he acknowledges, understands and agrees that he is doing this at his own initiative, and at his own risk. It is his responsibility to make sure that he complies with the applicable local laws. If the user is not an Indian resident, by using this website and/or revealing his personal identity or any other information on the website, he expressly consents to the transfer of such data to India, and to the processing of such data on Avenue Realty’s Indian servers, where his data will be governed by Indian laws that may provide a level of data protection different from his country of residence.</p>
<p><b>5.	SECURITY</b><br>
Transactions on the Website are secure and protected. Any information entered by the User when transacting on the Website is encrypted to protect the User against unintentional disclosure to third parties. The User’s credit and debit card information is not received, stored by or retained by the Company / Website in any manner. This information is supplied by the User directly to the relevant payment gateway which is authorized to handle the information provided, and is compliant with the regulations and requirements of various banks and institutions and payment franchisees that it is associated with.</p>
<p><b>6.	LICENSE AND ACCESS</b><br>
The Company grants you no sub-license, whether limited or not, to access and make personal use of the Site, and not to download (other than page caching) or modify it or any portion of it, except with express written consent of the Company. You are not permitted any resale or commercial use of the Site or its contents; any collection and use of any product listings, descriptions, or prices; any derivative use of the Site or its contents; any downloading or copying of information for the benefit of another merchant; or any use of data mining, robots, or similar data gathering and extraction tools. Any portion of the Site may not be reproduced, duplicated, copied, sold, resold, visited, or otherwise exploited for any commercial purpose without express written consent of the Company. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of the Website or of the Company and/or its affiliates without the express written consent of the Company. You may not use any meta tags or any other “hidden text” utilizing the Company’s name or trademarks without the express written consent of the Company.  You shall not attempt to gain unauthorized access to any portion or feature of the Site, or any other systems or networks connected to the Site or to any server, computer, network, or to any of the services offered on or through the Site, by hacking, ‘password mining’ or any other illegitimate means.</p>
<p>You hereby agree and undertake not to host, display, upload, modify, publish, transmit, update or share any information which:<br>
a.	belongs to another person and to which you do not have any right;<br>
b.	is grossly harmful, harassing, blasphemous, defamatory, obscene, pornographic, pedophilic, libelous, invasive of another’s privacy, hateful, or racially, ethnically objectionable, disparaging, relating or encouraging money laundering or gambling, or otherwise unlawful in any manner whatever;<br>
c.	harms minors in any way;<br>
d.	infringes any patent, trademark, copyright or other proprietary/intellectual property rights;<br>
e.	violates any law for the time being in force;<br>
f.	deceives or misleads the addressee about the origin of such messages communicates any information which is grossly offensive or menacing in nature;<br>
g.	impersonates another person;<br>
h.	contains software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer resource;<br>
i.	threatens the unity, integrity, defense, security or sovereignty of India, friendly relations with foreign states, or public order or causes incitement to the commission of any cognizable offence or prevents investigation of any offence or is insulting any other nation; or<br>
j.	is misleading or known to be false in any way.</p>
<p><b>7.	COMMUNICATIONS</b><br>
By using this Website, it is deemed that you have consented to receiving calls, autodialed and/or pre-recorded message calls, e-mails, from Us at any time with the use of the telephone number and e-mail address that has been provided by you for the use of this website which are subject to the Privacy Policy. The user agrees to receive promotional communication and newsletters from the Company and its partners. </p>
<p>This includes contacting you through information received through other parties.  The use of this website is also your consent to receive SMS from Us at any time we deem fit.  This consent to be contacted is for purposes that include and are not limited to clarification calls and marketing and promotional calls. The user can opt out from such communication and/or newsletters either by unsubscribing on the Website itself, or by contacting the customer services team and placing a request for unsubscribing by sending an email to support@avenue.in.</p>
<p>You may also be contacted by Service Providers with whom we have entered into a contract in furtherance of our rights, duties and obligations under this document and all other policies followed by Us. Such contact will be made only in pursuance of such objectives, and no other calls will be made. </p>
<p>The sharing of the information provided by you will be governed by the Privacy Policy and We may or may not sell your information to third parties. </p>
<p><b>8.	USER OBLIGATIONS</b><br>
You are a restricted user of this website.<br>
a.	You are bound not to cut, copy, distribute, modify, recreate, reverse engineer, distribute, disseminate, post, publish or create derivative works from, transfer, or sell any information or software obtained from the website. With our prior permission limited use may be allowed. For the removal of doubt, it is clarified that unlimited or wholesale reproduction, copying of the content for commercial or non-commercial purposes and unwarranted modification of data and information within the content of the Website is not permitted.<br>
b.	You agree not to access (or attempt to access) the Website and/or the materials or Services by any means other than through the interface that is provided by the website. The use of deep-link, robot, spider or other automatic device, program, algorithm or methodology, or any similar or equivalent manual process, to access, acquire, copy or monitor any portion of the Website or Content, or in any way reproduce or circumvent the navigational structure or presentation of the Website, materials or any Content, to obtain or attempt to obtain any materials, documents or information through any means not specifically made available through the Website. You acknowledge and agree that by accessing or using the Website or Services, You may be exposed to content from other users that You may consider offensive, indecent or otherwise objectionable. We disclaim all liabilities arising in relation to such offensive content on the Website. Further, You may report such offensive content.<br>
c.	In places where this website allows you to post or upload data/information, You undertake to ensure that such material is not offensive and in accordance with applicable laws. Further, You undertake not to:<br>
i.	Abuse, harass, threaten, defame, disillusion, erode, abrogate, demean or otherwise violate the legal rights of others;<br>
ii.	Engage in any activity that interferes with or disrupts access to the Website or the Services (or the servers and networks which are connected to the Website);<br>
iii.	Impersonate any person or entity, or falsely state or otherwise misrepresent Your affiliation with a person or entity;<br>
iv.	Publish, post, disseminate, any information which is grossly harmful, harassing, blasphemous, defamatory, obscene, pornographic, pedophilic, libelous, invasive of another’s privacy, hateful, or racially, ethnically objectionable, disparaging, relating or encouraging money laundering or gambling, or otherwise unlawful in any manner whatever; or unlawfully threatening or unlawfully harassing including but not limited to “indecent representation of women” within the meaning of the Indecent Representation of Women (Prohibition) Act, 1986;<br>
v.	Post any file that infringes the copyright, patent or trademark of other legal entities;<br>
vi.	Upload or distribute files that contain viruses, corrupted files, or any other similar software or programs that may damage the operation of the Website or another’s computer;<br>
vii.	Download any file posted by another user that you know, or reasonably should know, cannot be legally distributed in such manner;<br>
viii.	Probe, scan or test the vulnerability of the Website or any network connected to the Website, nor breach the security or authentication measures on the Website or any network connected to the Website. You may not reverse look-up, trace or seek to trace any information on any other user, of or visitor to, the Website, or any other customer of the website, including any website Account not owned by You, to its source, or exploit the Website or Service or information made available or offered by or through the Website, in any way whether or not the purpose is to reveal any information, including but not limited to personal identification information, other than Your own information, as provided for by the Website;<br>
ix.	Disrupt or interfere with the security of, or otherwise cause harm to, the Website, system resources, accounts, passwords, servers or networks connected to or accessible through the Website or any affiliated or linked sites;<br>
x.	Collect or store data about other users in connection with the prohibited conduct and activities set forth in this Section;<br>
xi.	Use the Website or any material or Content for any purpose that is unlawful or prohibited by these Terms of Service, or to solicit the performance of any illegal activity or other activity which infringes the rights of this website or other third parties;<br>
xii.	Violate any code of conduct or other guidelines, which may be applicable for or to any particular Service;<br>
xiii.	Violate any applicable laws or regulations for the time being in force within or outside India;<br>
xiv.	Violate the Terms of Service including but not limited to any applicable Additional Terms of the Website contained herein or elsewhere;<br>
xv.	Violate any code of conduct or other guidelines, which may be applicable for or to any particular Service;<br>
xvi.	Threaten the unity, integrity, defense, security or sovereignty of India, friendly relations with foreign states, or public order or cause incitement to the commission of any cognizable offence or prevent investigation of any offence or is insulting any other nation;<br>
xvii.	Publish, post, disseminate information that is false, inaccurate or misleading; violate any applicable laws or regulations for the time being in force in or outside India;<br>
xviii.	Directly or indirectly, offer, attempt to offer, trade or attempt to trade in any item, the dealing of which is prohibited or restricted in any manner under the provisions of any applicable law, rule, regulation or guideline for the time being in force;<br>
xix.	Create liability for Us or cause Us to lose (in whole or in part) the services of Our internet service provider (“ISPs”) or other suppliers.<br>
We have no obligation to monitor the materials posted on the Website. We shall have the right to remove or edit any content that in its sole discretion violates, or is alleged to violate, any applicable law or either the spirit or letter of these Terms of Service. Notwithstanding this right, YOU REMAIN SOLELY RESPONSIBLE FOR THE CONTENT OF THE MATERIALS YOU POST ON THE WEBSITE AND IN YOUR PRIVATE MESSAGES. In no event shall We assume or have any responsibility or liability for any Content posted or for any claims, damages or losses resulting from the use of Content and/or appearance of Content on the Website. You hereby represent and warrant that You have all necessary rights in and to all Content which You provide and all information it contains and that such Content shall not infringe any proprietary or other rights of third parties or contain any libelous, tortuous, or otherwise unlawful information.</p>
<p><b>9.	COPYRIGHT AND TRADEMARK</b><br>
The Company, its suppliers and licensors expressly reserve all intellectual property rights in all text, programs, products, processes, technology, images, content and other materials which appear on the Site. Access to or use of the Site does not confer and should not be considered as conferring upon anyone any license to the Company or any third party’s intellectual property rights. All rights, including copyright, in and to the Site are owned by or licensed to the Company. Any use of the Site or its contents, including copying or storing it or them in whole or part is prohibited without the permission of the Company. </p>
<p>This page contains maps of new capital of Andhra Pradesh, Amaravati City/Townships and other private layouts along with other details such as land pooling scheme, returnable plots and other details. Some of the maps available on the Website are developed with the information provided by APCRDA on their website for public use. Avenue Realty is not affiliated to APCRDA or Government of Andhra Pradesh in any manner. Neither APCRDA nor Avenue Realty shall be responsible for any information that may be misplaced, incorrect, outdated and/or unavailable. Further APCRDA reserves the right to change maps of Amaravati without notifying you or Avenue Realty or anyone else of the same. </p>
<p>The maps provided on the website are for information purposes only and to help the User get a high level of understanding of Amaravati layout. The User shall not consider the data to be correct or up to date. Further Users shall not quote any data or information available on the Website, as a source for any query made or being made to the APCRDA or Andhra Pradesh government.</p>
<p>You may not modify, distribute or re-post anything on the Site for any purpose. The names and logos and all related product and service names, design marks and slogans are the trademarks/service marks of the Company, its affiliates, its partners or its suppliers/service providers. All other marks are the property of their respective owners. No trademark or service mark license is granted in connection with the materials contained on the Site. Access to or use of the Site does not authorize anyone to use any name, logo or mark in any manner. References on the Site to any names, marks, products or services of third parties or hypertext links to third party sites or information are provided solely as a convenience to you and do not in any way constitute or imply the Company’s endorsement, sponsorship or recommendation of the third party, the information, its product or services. </p>
<p>The Company is not responsible for the content of any third party sites and does not make any representations regarding the content or accuracy of material on such sites. If you decide to access a link of any third party websites, you do so entirely at your own risk and expense. </p>
<p><b>10.	DISCLAIMER OF WARRANTIES AND LIABILITIES</b><br>
You expressly understand and agree that, to the maximum extent permitted by applicable law:<br>
The website, services and other materials are provided by this website is on an “as is” basis without warranty of any kind, express, implied, statutory or otherwise, including the implied warranties of title, non-infringement, merchant ability or fitness for a particular purpose. Without limiting the foregoing, we make no warranty that<br>
a.	Your requirements will be met or that services provided will be uninterrupted, timely, secure or error-free<br>
b.	Materials, information and results obtained will be effective, accurate or reliable<br>
c.	Any errors or defects in the website, services or other materials will be corrected<br>
To the maximum extent permitted by applicable law, we will have no liability related to user content arising under intellectual property rights, libel, privacy, publicity, obscenity or other laws. we also disclaim all liability with respect to the misuse, loss, modification or unavailability of any user content.<br>
The user understands and agrees that any material or data downloaded or otherwise obtained through the website is done entirely at his/her own discretion and risk and he/she will be solely responsible for any damage to his/her computer systems or loss of data that results from the download of such material or data. we are not responsible for any typographical error leading to an invalid coupon. we accept no liability for any errors or omissions, with respect to any information provided to you whether on behalf of itself or third parties.<br>
We shall not be responsible for the relevance and validity of comments made by third parties like vendors, public on the platform. the customer shall be wholly responsible for the accuracy of email, phone number, and personal information. further in awarding points that are redeemable for cash, to users we are not responsible if the event expires or changes or is removed altogether.<br>
We shall not be liable for any third party product or services. the advertisement available on e-mail or website with respect to the third party website or the products and services are for information purpose only.</p>
<p><b>11.	INDEMNIFICATION AND LIMITATION OF LIABILITY</b><br>
You agree to indemnify, defend and hold harmless this website/company including but not limited to its affiliate vendors, agents and employees from and against any and all losses, liabilities, claims, damages, demands, costs and expenses (including legal fees and disbursements in connection therewith and interest chargeable thereon) asserted against or incurred by us that arise out of, result from, or may be payable by virtue of, any breach or non-performance of any representation, warranty, covenant or agreement made or obligation to be performed by you pursuant to these terms of service. Further, you agree to hold us harmless against any claims made by any third party due to, or arising out of, or in connection with, your use of the website, any claim that your material caused damage to a third party, your violation of the terms of service, or your violation of any rights of another, including any intellectual property rights.<br>
In no event shall we, our officers, directors, employees, partners, suppliers or experts be liable to you, the vendor or any third party for any special, incidental, indirect, consequential or punitive damages whatsoever, including those resulting from loss of use, data or profits, whether or not foreseeable or whether or not we have been advised of the possibility of such damages, or based on any theory of liability, including breach of contract or warranty, negligence or other tortuous action, or any other claim arising out of or in connection with your use of or access to the website, services or materials.<br>
Users shall only use this website/maps for information purposes only. Such information shall not be used as a source any queries with apcrda or Andhra Pradesh Government. </p>
<p>Further maps and information we display may not be accurate and users/buyers/sellers should cross verify site information with concerned parties before taking any decision. Avenue realty doesn’t take any responsibility or liability for any discrepancies in information. Further we shall not be responsible for any negative outcome based on reliance of the information available on the website.<br>
The limitations and exclusions in this section apply to the maximum extent permitted by applicable law.</p>
<p><b>12.	TERMINATION</b><br>
This User Agreement is effective unless and until terminated by either you or the Company. You may terminate this User Agreement at any time, provided that you discontinue any further use of the Website. The Company may terminate this User Agreement at any time and may do so immediately without notice, and accordingly deny you access to the Site.<br>
Such termination will be without any liability to the Company. The Company’s right to any Comments and to be indemnified pursuant to the terms hereof, shall survive any termination of this User Agreement. Any such termination of the User Agreement shall not cancel your obligation to pay for product(s)/service(s) already ordered from the Site or affect any liability that may have arisen under the User Agreement prior to the date of termination. </p>
<p><b>13.	DISPUTES AND JURISDICTION</b><br>
All disputes involving but not limited to rights conferred, compensation, refunds, and other claims will be resolved through a two-step Alternate Dispute Resolution mechanism.<br>
a.	Stage 1: Mediation. In case of a dispute, the matter will first be attempted to be resolved by a sole mediator who is a neutral third party and will be selected at the mutual acceptance of a proposed mediator by both parties. Both parties may raise a name for the sole mediator and in the case both parties accept the proposed name, the said person shall be appointed as sole mediator. In case the parties are not able to reach a consensus within two proposed mediators, the Company reserves the right to decide who the final mediator is. The decision of the mediator is not binding on both parties.<br>
b.	Stage 2: Arbitration. In case that mediation does not yield a result suitable or preferred by any one of the parties, arbitration may follow, the award of which is binding on both parties. The Arbitration Board shall comprise three members – one appointed by each party and the third member to be nominated by the two appointed members by mutual consent. Arbitration shall be held at Vijayawada, Andhra Pradesh, India. The proceedings of arbitration shall be in the English language. The arbitrator’s award shall be final and binding on the Parties.<br>
If the dispute cannot be resolved by this two-step Alternate Dispute Resolution mechanism, it shall be referred to the courts at Vijayawada, Andhra Pradesh, India. </p>
<p><b>14.	PRIVACY</b><br>
We encourage you to read the Privacy Policy and to use the information it contains to make informed decisions regarding Your personal information. Please also note that certain information, statements, data and content (such as but not limited to photographs) which You provide on the Website are likely to reveal Your gender, ethnic origin, nationality, age, and/or other personal information about You. You acknowledge and agree that your submission of such information is voluntary on Your part. Further, You acknowledge, consent and agree that we may access, preserve, and disclose information You provide to Us at any stage during Your use of the Website. Disclosures of information to Third Parties are further addressed in Our Privacy Policy.</p>
<p><b>15.	MISCELLANEOUS PROVISIONS</b><br>
a.	Entire Agreement: The terms and conditions set forth in this Agreement and any additional or different terms expressly agreed by Client and Service vendor shall constitute the entire agreement and understanding of Client and Service vendor with respect to each Service Contract and shall cancel and supersede any other prior or contemporaneous discussions, agreements, representations, warranties, and/or other communications between them. Notwithstanding the foregoing, the Client and Service vendor shall always remain subject to the terms of Our user Agreement.<br>
b.	Waiver: The failure of either party at any time to require performance of any provision of this Agreement in no manner shall affect such party’s right at a later time to enforce the same. No waiver by either party of any breach of this Agreement, whether by conduct or otherwise, in any one or more instances, shall be deemed to be, or construed as, a further or continuing waiver of any other such breach, or a waiver of any other breach of this Agreement.<br>
c.	Severability: If any provision of this Agreement shall to any extent be held invalid, illegal or unenforceable, the validity, legality and enforceability of the remaining provisions of this Agreement shall in no way be affected or impaired thereby and each such provision of this Agreement shall be valid and enforceable to the fullest extent permitted by law. In such a case, this Agreement shall be reformed to the minimum extent necessary to correct any invalidity, illegality or unenforceability, while preserving to the maximum extent the rights and commercial expectations of the parties hereto, as expressed herein.</p>
<p><b>16.	CONTACT US</b><br>
If you have any questions about this Agreement, the practices of, or your experience with the Service, you can e-mail us at support@avenue.in.</p>
</div>
                                        
                                        
                                       
                                      
                                        
                                        
                                        
                                        
                                        
                                        
                                    </ul>
                                </div>
                                <!-- Pagination -->
                                
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Main Section -->

        </div>
        <!-- Main Content -->
<jsp:include page="footer.jsp" />
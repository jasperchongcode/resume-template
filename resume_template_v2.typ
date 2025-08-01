//* ##########################################
//* #                                        #
//* #     Jasper Chong's Resume Template     #
//* #                                        #
//* ##########################################

//! Requires font awesome 7 brands for the icons

// =============
// = constants =
// =============

#let website_link = "https://yourwebsite.com/your-portfolio" // Replace with your portfolio or personal website link

// ========================
// = Setup Page Settings  =
// ========================

#set page(margin: (top: 0.3in, bottom: 0.4in, left: 0.4in, right: 0.4in), footer: [
  #set text(size: 8pt, fill: black)
  #grid(
    columns: (1fr, auto),
    [], [#datetime.today().display("[month repr:long] [year]")],
  )
])
#set text(font: "Arial", size: 10.5pt)
#set par(justify: true)

// ===================
// = Setup Functions =
// ===================
#let header_text(content) = text(size: 14pt, weight: "bold")[#content]

#let section_header(content, additional: []) = [
  #grid(
    columns: (1fr, auto),
    [
      #text(size: 12pt, weight: "bold")[#content]],
    [#emph(additional)],
  )
  #v(-0.9em)
  #line(length: 100%, stroke: 0.5pt)
]

#let subheader_text(content) = text(size: 11.5pt, weight: "bold")[#content]

#let contact_item(content) = text(size: 9pt)[#content]

#let job_title(company, location) = [
  #grid(
    columns: (1fr, auto),
    [#subheader_text(company)], [#location],
  )
  #v(-.5em)
]
#let job_subtitle(title, duration) = [
  #grid(
    columns: (1fr, auto),
    [#h(0em) #text(title, size: 10.5pt, weight: "semibold", style: "italic")], [#emph[#duration]],
  )
  #v(-.3em)
]

#let education_item(degree, institution, duration) = [
  #grid(
    columns: (1fr, auto),
    [#subheader_text(institution) - #strong(emph(degree))], [#emph(duration)],
  )
]

#let vdiv = [#h(1fr) | #h(1fr)]

// ==================
// = Header Section =
// ==================

#align(center)[
  #header_text[Your Name Here]

  #v(-0.2em)
  #contact_item[
    #link(
      "https://linkedin.com/in/yourlinkedinprofile", // Your LinkedIn Profile URL
    )[#text(font: "Font Awesome 7 Brands")[linkedin] #h(0.4em) Your LinkedIn Name] #vdiv
    #link(
      "https://github.com/yourgithubprofile", // Your GitHub Profile URL
    )[#text(font: "Font Awesome 7 Brands")[github] #h(0.4em) yourgithubusername] #vdiv
    #link(website_link)[#text(font: "Font Awesome 7 Free Solid")[globe] #h(0.4em) *yourwebsite.com*] #vdiv
    #text(font: "Font Awesome 7 Free Solid")[envelope] #h(0.4em) your.email\@example.com #vdiv
    #text(font: "Font Awesome 7 Free Solid")[phone] #h(0.4em) +1 (123) 456-7890 // Your phone number
  ]
]

#v(0.3em)

// ===================
// = Summary Section =
// ===================

*Summary:* [Start with your main focus/expertise, e.g., "Machine Learning-focused Software Engineering student at [University Name] with a passion for [Area of Interest]. Interested in utilising [Skills/Methods] for [Desired Outcome]."]


// =====================
// = Education Section =
// =====================

#section_header[EDUCATION]

#education_item[
  [Your Degree Title]
][
  [Your University Name]
][Start Month Year -- End Month Year]
*Majors:* [List your majors] #vdiv *GPA:*  #vdiv [Scholarships (Optional)] #vdiv [Academic Year (e.g., Second Year)]

*Relevant Coursework:* [List key courses and skills gained, tailored to what you are applying to]

*[Optional: Add details about special programs if relevant to your profile]*

#grid(
  columns: (1fr, auto),
  [#text(size: 11pt, weight: "bold")[High School] - *_ATAR: Your Score_*_, [Optional Subject/s (Score%)]_],
  [#emph[Start Month Year - End Month Year]],
)
// ======================
// = Experience Section =
// ======================

#section_header[SELECTED EXPERIENCE]
// Use block to indent dot points more in this section (makes experience headers stand out)
#block[
  #set list(indent: 1em)

  #job_title[Company Name 1][City, State/Country]
  #job_subtitle[Your Role Title 1][Start Month Year -- Present or End Month Year]

  - [Quantifiable achievement using strong action verbs (e.g., "Developed scalable full-stack AI integrated support system, reducing ticket response times by over 80%.")]
  - [Key responsibility or project outcome, mentioning relevant technologies (e.g., "Led backend development of internal administration platform, utilizing AWS, Python, and React.")]
  - [Significant contribution or impact, highlighting skills and results (e.g., "Architected cloud infrastructure and contributed to client-facing platforms, leading to [specific outcome].")]

  #job_subtitle[Previous Related Role Title at Company 1 (If applicable)][Start Month Year - End Month Year]

  - [Another significant project or responsibility from this role, with impact (e.g., "Built and deployed [specific system], handling over [number] customer interactions and improving [metric] by [percentage].")]

  #job_title[Company Name 2 / Organization Name][City, State/Country]
  #job_subtitle[Your Role Title 2][Start Month Year -- End Month Year]

  - [Leadership or organizational achievement, quantifying scope or scale (e.g., "Managed and supported [number] participants across [number] countries over [duration] at [event name].")]

  #job_title[University Name / Research Institution Name][City, State/Country]

  #job_subtitle[Research/Project Role Title (e.g., Summer Research Scholar)][Start Month Year -- End Month Year]

  - [Research or project outcome, detailing methodology, tools used, and any presentations or demonstrations (e.g., "Researched and developed an interactive data visualization tool for [data type], presented to [audience].")]

  #job_subtitle[Student Organization Role][Start Month Year -- Present or End Month Year]

  - [Responsibilities and achievements within a student organization, including any impact on members or events (e.g., "Organized [number] events and managed budgets for a society of over [number] members.")]
]

// =============================
// = Selected Projects Section =
// =============================

#section_header(additional: [More details at #link(website_link)[yourwebsite.com]])[SELECTED PROJECTS]
// - *Project Title 1*: Brief description of the project, what you built/achieved, and key technologies used.
//   (e.g., "Tool for creating, adding to, and querying from a text constructed graph database (*Neo4J*) via API. This tool was demoed at the *United Nations AI for Good Conference*. (*Python*, *Docker*, *OpenAI*)")

- *Project Title 1:* [Brief, impactful description of the project, including key technologies and any notable results or applications.]
- *Project Title 2:* [Describe another project, highlighting its technical complexity, your role, and tools used.]
- *Project Title 3:* [Detail a project demonstrating a different skill set or interest.]
- *Project Title 4:* [Another project demonstrating your practical application of skills.]
- *Project Title 5:* [Optional: Add more projects to showcase breadth of experience.]


// ============================
// = Technical Skills Section =
// ============================

#section_header[TECHNICAL SKILLS]

*Languages:* [List programming languages you are proficient in, e.g., Python, JavaScript/TypeScript, C, Java, Go, Rust]

*Tools & Platforms:* [List relevant software, frameworks, cloud platforms, and tools, e.g., AWS Lambda, DynamoDB, Bedrock, Amplify, Git, Figma, Jupyter, Docker, Gemini, OpenAI, Azure, GCP, TensorFlow, PyTorch, scikit-learn]

// ===========================
// = Extracurricular Section =
// ===========================

#section_header[EXTRACURRICULAR]

#subheader_text[Volunteering/Leadership]

List relevant volunteering or leadership roles. Be concise but impactful.
Example:
- *Role/Program Name*: [Brief description of responsibilities and impact, e.g., "Completed Science Leadership Development program. Facilitating science outreach events, STEM engagement, and Community involvement."]

#subheader_text[Competitions]

List notable competitions and achievements.
Example:
- *Competition Name*: [Your result/ranking, brief description of what you did, e.g., "4th place UQ: Time series prediction with Python"]
- *Another Competition*: [Result, e.g., "94th percentile (#742 global, #51 in Aus)"]
- [Any other relevant hackathons or student-run competitions.]

#subheader_text[Courses / Certifications]
List relevant online courses, certifications, or workshops completed that enhance your skills.
Example:
- *Course Title*: [Briefly mention what you gained or a project built, e.g., "Completed and built project"]
- *Certification Name*: [Details, e.g., "Scored 100% and built project"]
- *Platform Courses* (Completed): [List specific courses, e.g., Pandas, Intermediate Machine Learning, Data Visualization, Feature Engineering, Intro to Deep Learning, Computer Vision, Time Series]
- [Participated in multiple Kaggle competitions applying ML and CV techniques.]

// ===========================
// = Awards Section (Optional) =
// ===========================
#section_header[AWARDS]

List academic or professional awards. Be specific about what the award was for.
Example:

*Award Name 1* | [Reason for award, e.g., "For a GPA of 7 for the given semester."]

*Award Name 2* | [Details about the award and what it recognizes.]

*Award Name 3* | [Details about the award and what it recognizes.]

*Award Name 4* | [Details about the award and what it recognizes.]

*Award Name 5* | [Details about the award and what it recognizes.]

*Award Name 6* | [Details about the award and what it recognizes.]

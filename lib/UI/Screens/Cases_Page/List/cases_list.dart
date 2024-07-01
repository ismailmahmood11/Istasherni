class CasesList {
  CasesList({
    required this.title,
    required this.subTitle,
    required this.desc,
    required this.date,
    required this.img,
  });

  String title;
  String subTitle;
  String desc;
  String date;
  String img;
}

List<CasesList> caseList = [
  CasesList(
    title: 'Naturalization in the US',
    subTitle:
        'We specialize in guiding clients through the naturalization process, offering dedicated support from application to interview. Our services include accompanying clients to their interviews and ensuring clarity with our proficient Arabic interpreters.',
    img: 'assets/images/cases_Images/cases1.png',
    desc:
        'At our firm, we excel in assisting clients through every step of the naturalization process, ensuring they navigate it smoothly. From initial application submission to interview preparation, we offer comprehensive support tailored to their needs. Our dedicated team stands by their side, providing expert guidance and peace of mind. We accompany clients to their interviews, ensuring they feel confident and well-prepared. With our skilled Arabic interpreters, language barriers are effectively bridged, ensuring clear communication throughout. Count on us to make your naturalization journey as seamless and successful as possible.',
    date: 'December, 11 2022 - January, 9 2023',
  ),
  CasesList(
    title: 'The Case of William Accused Corruption of Money at Gony Bank',
    subTitle:
        " We provided our musician client with comprehensive guidance throughout the process of establishing her business, offering detailed consultations tailored to her new venture's needs. Our support ensured she navigated each step confidently, from initial planning to operational setup and beyond.",
    img: 'assets/images/cases_Images/cases2.png',
    desc:
        "We provided comprehensive guidance to our musician client, assisting her throughout the entire process of establishing her business. Our support included detailed consultations tailored to her new venture's specific needs. We helped her with initial planning, ensuring she had a solid foundation. Our team guided her through legal requirements and business registration. We offered advice on marketing strategies and audience engagement. Throughout the setup phase, we provided continuous support and feedback. Our assistance ensured she confidently navigated every step of her business journey.",
    date: 'December, 11 2022 - January, 9 2023',
  ),
  CasesList(
    title: 'Green Card',
    subTitle:
        'We submitted an application for our client to obtain her green card and facilitated the establishment of her marriage in the US.',
    img: 'assets/images/cases_Images/cases3.png',
    desc:
        'We submitted a green card application for our client and facilitated the establishment of her marriage in the US. Our comprehensive support ensured all legal requirements were met, providing peace of mind throughout the process. We guided her through documentation and interview preparation, ensuring she was well-prepared. Our dedicated team assisted in gathering and organizing all necessary paperwork. We provided continuous updates and clear communication. Our client felt supported and confident at every stage. We ensured a seamless and successful experience from start to finish.',
    date: 'assets/images/cases_Images/cases3.png',
  ),
];

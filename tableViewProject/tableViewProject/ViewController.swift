//
//  ViewController.swift
//  tableViewProject
//
//  Created by Movses Aghabekyan on 09.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    let personArray: [Singer] = [Singer(name: "Gary Moore", photo: UIImage(named: "0"), descriptions: """
    Robert William Gary Moore (4 April 1952 – 6 February 2011) was a Northern Irish musician, singer and songwriter. Over the course of his career he played in various groups and performed an eclectic range of music including blues, hard rock, heavy metal, and jazz fusion. Influenced by Peter Green and Eric Clapton, Moore began his career in the late 1960s when he joined Skid Row, with whom he released two albums. After Moore left the group he joined Thin Lizzy, featuring his former Skid Row bandmate and frequent collaborator Phil Lynott.
    """), Singer(name: "Andrea Bocelli", photo: UIImage(named: "1"), descriptions: """
    Andrea Bocelli OMRI OMDSM (Italian: [anˈdreːa boˈtʃɛlli]; born 22 September 1958)[1] is an Italian opera tenor and multi-instrumentalist.[2][3] He was diagnosed with congenital glaucoma at 5 months old, and became completely blind at age 12, following a football accident. After performing evenings in piano bars and competing in local singing contests, Bocelli signed his first recording contract with the Sugar Music label. He rose to fame in 1994, winning the preliminary round of the 44th Sanremo Music Festival performing "Miserere", with the highest marks ever recorded in the newcomers section.
    """), Singer(name: "Gary Coleman", photo: UIImage(named: "2"), descriptions: """
    Coleman was born in Paris, Texas. He was working alongside Freddie King by the age of 15.[2] He later supported Lightnin' Hopkins in concert and went on to form his own group. At this time he started simultaneously booking acts into nightclubs across three states, Texas, Oklahoma, and Colorado.[2] This dual lifestyle in the Southwest continued for nearly twenty years.[3]
    """
    ), Singer(name: "Harry Styles", photo: UIImage(named: "3"),descriptions: """
    Harry Edward Styles (born 1 February 1994) is an English singer and songwriter. His musical career began in 2010 as a solo contestant on the British music competition series The X Factor. Following his elimination early on, he was brought back to join the boy band One Direction, which went on to become one of the best-selling boy bands of all time.
    """), Singer(name: "Freddie Mercury", photo: UIImage(named: "4"), descriptions: """
    Freddie Mercury (born Farrokh Bulsara; 5 September 1946 – 24 November 1991)[2] was a British singer, songwriter, record producer, and lead vocalist of the rock band Queen. Regarded as one of the greatest singers in the history of rock music, he was known for his flamboyant stage persona and four-octave vocal range. Mercury defied the conventions of a rock frontman, with his highly theatrical style influencing the artistic direction of Queen.
    """), Singer(name: "Eminem", photo: UIImage(named: "5"), descriptions: """
    Marshall Bruce Mathers III (born October 17, 1972), known professionally as Eminem (/ˌɛmɪˈnɛm/; formerly stylized as EMINƎM), is an American rapper, songwriter, and record producer. Eminem is among the best-selling music artists of all time, with estimated worldwide sales of over 220 million records. He is credited with popularizing hip hop in Middle America and is critically acclaimed as one of the greatest rappers of all time.[2]
    """), Singer(name: "Adriano Celentano", photo: UIImage(named: "6"), descriptions: """
    Adriano Celentano (Italian: [adriˈaːno tʃelenˈtaːno]; born 6 January 1938) is an Italian singer, songwriter, musician, actor and filmmaker. He is dubbed "il Molleggiato" (the flexible one) because of his dancing.[1][2]
    Celentano has released many record albums which have enjoyed enormous commercial and critical success.
    He is often credited as the author of both the music and lyrics of his songs, although, according to his wife Claudia Mori, sometimes they were written in collaboration with others. Due to his prolific career and great success, both in Italy and the rest of the world, he is considered one of the pillars of Italian music.
    """), Singer(name: "George Michael", photo: UIImage(named: "7"), descriptions: """
    George Michael (born Georgios Kyriacos Panayiotou; 25 June 1963 – 25 December 2016) was a British singer, songwriter and record producer. Known as a leading creative force in music production, songwriting, vocal performance and visual presentation,[2][3][4][5][6] he is regarded as one of the greatest artists of the MTV era[7][8] and an icon of popular culture.[9]
    """), Singer(name: "Sharl Aznavur", photo: UIImage(named: "8"), descriptions: """
    Charles Aznavour (/ˌæznəˈvʊər/ AZ-nə-VOOR, French: [ʃaʁl aznavuʁ]; born Shahnour Vaghinag Aznavourian, Armenian: Շահնուր Վաղինակ Ազնավուրեան, Shahnur Vaghinak Aznavuryan;[A] 22 May 1924 – 1 October 2018)[3] was a French-Armenian singer, lyricist, actor and diplomat. Aznavour was known for his distinctive vibrato tenor voice:[4] clear and ringing in its upper reaches, with gravelly and profound low notes. In a career as a composer, singer and songwriter, spanning over 70 years, he recorded more than 1,200 songs interpreted in 9 languages.[5] Moreover, he wrote or co-wrote more than 1,000 songs for himself and others.[6] Aznavour is a major icon of popular culture and has been widely recognized as one of the greatest and most influential musicians of all time.
    """), Singer(name: "Adele", photo: UIImage(named: "9"), descriptions: """
    Adele Laurie Blue Adkins MBE (/əˈdɛl/; born 5 May 1988) is an English singer and songwriter. She is one of the world's best-selling music artists, with sales of over 120 million records.[4] After graduating in arts from the BRIT School in 2006, Adele signed a record deal with XL Recordings. Her debut album, 19, was released in 2008 and spawned the UK top-five singles "Chasing Pavements" and "Make You Feel My Love". The album was certified 8× platinum in the UK and triple platinum in the US. Adele was honored with the Brit Award for Rising Star as well as the Grammy Award for Best New Artist.
    """) ]

    let idCell = "MainCell"
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: idCell)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as! TableViewCell
        cell.label.text = personArray[indexPath.row].name
        cell.personImage.image = personArray[indexPath.row].photo
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "person1") as! SecondViewController
        secondVC.personNameText = personArray[indexPath.row].name
        secondVC.personPhotoImage = personArray[indexPath.row].photo
        secondVC.personDescriptionText = personArray[indexPath.row].desctiptions
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

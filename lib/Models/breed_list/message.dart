class Message {
  List<dynamic>? affenpinscher;
  List<dynamic>? african;
  List<dynamic>? airedale;
  List<dynamic>? akita;
  List<dynamic>? appenzeller;
  List<String>? australian;
  List<dynamic>? basenji;
  List<dynamic>? beagle;
  List<dynamic>? bluetick;
  List<dynamic>? borzoi;
  List<dynamic>? bouvier;
  List<dynamic>? boxer;
  List<dynamic>? brabancon;
  List<dynamic>? briard;
  List<String>? buhund;
  List<String>? bulldog;
  List<String>? bullterrier;
  List<String>? cattledog;
  List<dynamic>? cavapoo;
  List<dynamic>? chihuahua;
  List<dynamic>? chow;
  List<dynamic>? clumber;
  List<dynamic>? cockapoo;
  List<String>? collie;
  List<dynamic>? coonhound;
  List<String>? corgi;
  List<dynamic>? cotondetulear;
  List<dynamic>? dachshund;
  List<dynamic>? dalmatian;
  List<String>? dane;
  List<String>? deerhound;
  List<dynamic>? dhole;
  List<dynamic>? dingo;
  List<dynamic>? doberman;
  List<String>? elkhound;
  List<dynamic>? entlebucher;
  List<dynamic>? eskimo;
  List<String>? finnish;
  List<String>? frise;
  List<dynamic>? germanshepherd;
  List<String>? greyhound;
  List<dynamic>? groenendael;
  List<dynamic>? havanese;
  List<String>? hound;
  List<dynamic>? husky;
  List<dynamic>? keeshond;
  List<dynamic>? kelpie;
  List<dynamic>? komondor;
  List<dynamic>? kuvasz;
  List<dynamic>? labradoodle;
  List<dynamic>? labrador;
  List<dynamic>? leonberg;
  List<dynamic>? lhasa;
  List<dynamic>? malamute;
  List<dynamic>? malinois;
  List<dynamic>? maltese;
  List<String>? mastiff;
  List<dynamic>? mexicanhairless;
  List<dynamic>? mix;
  List<String>? mountain;
  List<dynamic>? newfoundland;
  List<dynamic>? otterhound;
  List<String>? ovcharka;
  List<dynamic>? papillon;
  List<dynamic>? pekinese;
  List<dynamic>? pembroke;
  List<String>? pinscher;
  List<dynamic>? pitbull;
  List<String>? pointer;
  List<dynamic>? pomeranian;
  List<String>? poodle;
  List<dynamic>? pug;
  List<dynamic>? puggle;
  List<dynamic>? pyrenees;
  List<dynamic>? redbone;
  List<String>? retriever;
  List<String>? ridgeback;
  List<dynamic>? rottweiler;
  List<dynamic>? saluki;
  List<dynamic>? samoyed;
  List<dynamic>? schipperke;
  List<String>? schnauzer;
  List<String>? segugio;
  List<String>? setter;
  List<dynamic>? sharpei;
  List<String>? sheepdog;
  List<dynamic>? shiba;
  List<dynamic>? shihtzu;
  List<String>? spaniel;
  List<String>? spitz;
  List<String>? springer;
  List<dynamic>? stbernard;
  List<String>? terrier;
  List<dynamic>? tervuren;
  List<dynamic>? vizsla;
  List<String>? waterdog;
  List<dynamic>? weimaraner;
  List<dynamic>? whippet;
  List<String>? wolfhound;

  Message({
    this.affenpinscher,
    this.african,
    this.airedale,
    this.akita,
    this.appenzeller,
    this.australian,
    this.basenji,
    this.beagle,
    this.bluetick,
    this.borzoi,
    this.bouvier,
    this.boxer,
    this.brabancon,
    this.briard,
    this.buhund,
    this.bulldog,
    this.bullterrier,
    this.cattledog,
    this.cavapoo,
    this.chihuahua,
    this.chow,
    this.clumber,
    this.cockapoo,
    this.collie,
    this.coonhound,
    this.corgi,
    this.cotondetulear,
    this.dachshund,
    this.dalmatian,
    this.dane,
    this.deerhound,
    this.dhole,
    this.dingo,
    this.doberman,
    this.elkhound,
    this.entlebucher,
    this.eskimo,
    this.finnish,
    this.frise,
    this.germanshepherd,
    this.greyhound,
    this.groenendael,
    this.havanese,
    this.hound,
    this.husky,
    this.keeshond,
    this.kelpie,
    this.komondor,
    this.kuvasz,
    this.labradoodle,
    this.labrador,
    this.leonberg,
    this.lhasa,
    this.malamute,
    this.malinois,
    this.maltese,
    this.mastiff,
    this.mexicanhairless,
    this.mix,
    this.mountain,
    this.newfoundland,
    this.otterhound,
    this.ovcharka,
    this.papillon,
    this.pekinese,
    this.pembroke,
    this.pinscher,
    this.pitbull,
    this.pointer,
    this.pomeranian,
    this.poodle,
    this.pug,
    this.puggle,
    this.pyrenees,
    this.redbone,
    this.retriever,
    this.ridgeback,
    this.rottweiler,
    this.saluki,
    this.samoyed,
    this.schipperke,
    this.schnauzer,
    this.segugio,
    this.setter,
    this.sharpei,
    this.sheepdog,
    this.shiba,
    this.shihtzu,
    this.spaniel,
    this.spitz,
    this.springer,
    this.stbernard,
    this.terrier,
    this.tervuren,
    this.vizsla,
    this.waterdog,
    this.weimaraner,
    this.whippet,
    this.wolfhound,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        affenpinscher: json['affenpinscher'] as List<dynamic>?,
        african: json['african'] as List<dynamic>?,
        airedale: json['airedale'] as List<dynamic>?,
        akita: json['akita'] as List<dynamic>?,
        appenzeller: json['appenzeller'] as List<dynamic>?,
        australian: json['australian'] as List<String>?,
        basenji: json['basenji'] as List<dynamic>?,
        beagle: json['beagle'] as List<dynamic>?,
        bluetick: json['bluetick'] as List<dynamic>?,
        borzoi: json['borzoi'] as List<dynamic>?,
        bouvier: json['bouvier'] as List<dynamic>?,
        boxer: json['boxer'] as List<dynamic>?,
        brabancon: json['brabancon'] as List<dynamic>?,
        briard: json['briard'] as List<dynamic>?,
        buhund: json['buhund'] as List<String>?,
        bulldog: json['bulldog'] as List<String>?,
        bullterrier: json['bullterrier'] as List<String>?,
        cattledog: json['cattledog'] as List<String>?,
        cavapoo: json['cavapoo'] as List<dynamic>?,
        chihuahua: json['chihuahua'] as List<dynamic>?,
        chow: json['chow'] as List<dynamic>?,
        clumber: json['clumber'] as List<dynamic>?,
        cockapoo: json['cockapoo'] as List<dynamic>?,
        collie: json['collie'] as List<String>?,
        coonhound: json['coonhound'] as List<dynamic>?,
        corgi: json['corgi'] as List<String>?,
        cotondetulear: json['cotondetulear'] as List<dynamic>?,
        dachshund: json['dachshund'] as List<dynamic>?,
        dalmatian: json['dalmatian'] as List<dynamic>?,
        dane: json['dane'] as List<String>?,
        deerhound: json['deerhound'] as List<String>?,
        dhole: json['dhole'] as List<dynamic>?,
        dingo: json['dingo'] as List<dynamic>?,
        doberman: json['doberman'] as List<dynamic>?,
        elkhound: json['elkhound'] as List<String>?,
        entlebucher: json['entlebucher'] as List<dynamic>?,
        eskimo: json['eskimo'] as List<dynamic>?,
        finnish: json['finnish'] as List<String>?,
        frise: json['frise'] as List<String>?,
        germanshepherd: json['germanshepherd'] as List<dynamic>?,
        greyhound: json['greyhound'] as List<String>?,
        groenendael: json['groenendael'] as List<dynamic>?,
        havanese: json['havanese'] as List<dynamic>?,
        hound: json['hound'] as List<String>?,
        husky: json['husky'] as List<dynamic>?,
        keeshond: json['keeshond'] as List<dynamic>?,
        kelpie: json['kelpie'] as List<dynamic>?,
        komondor: json['komondor'] as List<dynamic>?,
        kuvasz: json['kuvasz'] as List<dynamic>?,
        labradoodle: json['labradoodle'] as List<dynamic>?,
        labrador: json['labrador'] as List<dynamic>?,
        leonberg: json['leonberg'] as List<dynamic>?,
        lhasa: json['lhasa'] as List<dynamic>?,
        malamute: json['malamute'] as List<dynamic>?,
        malinois: json['malinois'] as List<dynamic>?,
        maltese: json['maltese'] as List<dynamic>?,
        mastiff: json['mastiff'] as List<String>?,
        mexicanhairless: json['mexicanhairless'] as List<dynamic>?,
        mix: json['mix'] as List<dynamic>?,
        mountain: json['mountain'] as List<String>?,
        newfoundland: json['newfoundland'] as List<dynamic>?,
        otterhound: json['otterhound'] as List<dynamic>?,
        ovcharka: json['ovcharka'] as List<String>?,
        papillon: json['papillon'] as List<dynamic>?,
        pekinese: json['pekinese'] as List<dynamic>?,
        pembroke: json['pembroke'] as List<dynamic>?,
        pinscher: json['pinscher'] as List<String>?,
        pitbull: json['pitbull'] as List<dynamic>?,
        pointer: json['pointer'] as List<String>?,
        pomeranian: json['pomeranian'] as List<dynamic>?,
        poodle: json['poodle'] as List<String>?,
        pug: json['pug'] as List<dynamic>?,
        puggle: json['puggle'] as List<dynamic>?,
        pyrenees: json['pyrenees'] as List<dynamic>?,
        redbone: json['redbone'] as List<dynamic>?,
        retriever: json['retriever'] as List<String>?,
        ridgeback: json['ridgeback'] as List<String>?,
        rottweiler: json['rottweiler'] as List<dynamic>?,
        saluki: json['saluki'] as List<dynamic>?,
        samoyed: json['samoyed'] as List<dynamic>?,
        schipperke: json['schipperke'] as List<dynamic>?,
        schnauzer: json['schnauzer'] as List<String>?,
        segugio: json['segugio'] as List<String>?,
        setter: json['setter'] as List<String>?,
        sharpei: json['sharpei'] as List<dynamic>?,
        sheepdog: json['sheepdog'] as List<String>?,
        shiba: json['shiba'] as List<dynamic>?,
        shihtzu: json['shihtzu'] as List<dynamic>?,
        spaniel: json['spaniel'] as List<String>?,
        spitz: json['spitz'] as List<String>?,
        springer: json['springer'] as List<String>?,
        stbernard: json['stbernard'] as List<dynamic>?,
        terrier: json['terrier'] as List<String>?,
        tervuren: json['tervuren'] as List<dynamic>?,
        vizsla: json['vizsla'] as List<dynamic>?,
        waterdog: json['waterdog'] as List<String>?,
        weimaraner: json['weimaraner'] as List<dynamic>?,
        whippet: json['whippet'] as List<dynamic>?,
        wolfhound: json['wolfhound'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'affenpinscher': affenpinscher,
        'african': african,
        'airedale': airedale,
        'akita': akita,
        'appenzeller': appenzeller,
        'australian': australian,
        'basenji': basenji,
        'beagle': beagle,
        'bluetick': bluetick,
        'borzoi': borzoi,
        'bouvier': bouvier,
        'boxer': boxer,
        'brabancon': brabancon,
        'briard': briard,
        'buhund': buhund,
        'bulldog': bulldog,
        'bullterrier': bullterrier,
        'cattledog': cattledog,
        'cavapoo': cavapoo,
        'chihuahua': chihuahua,
        'chow': chow,
        'clumber': clumber,
        'cockapoo': cockapoo,
        'collie': collie,
        'coonhound': coonhound,
        'corgi': corgi,
        'cotondetulear': cotondetulear,
        'dachshund': dachshund,
        'dalmatian': dalmatian,
        'dane': dane,
        'deerhound': deerhound,
        'dhole': dhole,
        'dingo': dingo,
        'doberman': doberman,
        'elkhound': elkhound,
        'entlebucher': entlebucher,
        'eskimo': eskimo,
        'finnish': finnish,
        'frise': frise,
        'germanshepherd': germanshepherd,
        'greyhound': greyhound,
        'groenendael': groenendael,
        'havanese': havanese,
        'hound': hound,
        'husky': husky,
        'keeshond': keeshond,
        'kelpie': kelpie,
        'komondor': komondor,
        'kuvasz': kuvasz,
        'labradoodle': labradoodle,
        'labrador': labrador,
        'leonberg': leonberg,
        'lhasa': lhasa,
        'malamute': malamute,
        'malinois': malinois,
        'maltese': maltese,
        'mastiff': mastiff,
        'mexicanhairless': mexicanhairless,
        'mix': mix,
        'mountain': mountain,
        'newfoundland': newfoundland,
        'otterhound': otterhound,
        'ovcharka': ovcharka,
        'papillon': papillon,
        'pekinese': pekinese,
        'pembroke': pembroke,
        'pinscher': pinscher,
        'pitbull': pitbull,
        'pointer': pointer,
        'pomeranian': pomeranian,
        'poodle': poodle,
        'pug': pug,
        'puggle': puggle,
        'pyrenees': pyrenees,
        'redbone': redbone,
        'retriever': retriever,
        'ridgeback': ridgeback,
        'rottweiler': rottweiler,
        'saluki': saluki,
        'samoyed': samoyed,
        'schipperke': schipperke,
        'schnauzer': schnauzer,
        'segugio': segugio,
        'setter': setter,
        'sharpei': sharpei,
        'sheepdog': sheepdog,
        'shiba': shiba,
        'shihtzu': shihtzu,
        'spaniel': spaniel,
        'spitz': spitz,
        'springer': springer,
        'stbernard': stbernard,
        'terrier': terrier,
        'tervuren': tervuren,
        'vizsla': vizsla,
        'waterdog': waterdog,
        'weimaraner': weimaraner,
        'whippet': whippet,
        'wolfhound': wolfhound,
      };
}

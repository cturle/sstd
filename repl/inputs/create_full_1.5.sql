
    create table acceptation.ADRESSERISQUECONTRAT_ADRC (
        PK_ADRC int identity not null,
        ADRC_ADRESSETYPE varchar(255),
        primary key (PK_ADRC)
    )

    create table acceptation.ASSIETTEACCEPTATION_ASS (
        PK_ASS int identity not null,
        ASS_CODE varchar(255),
        ASS_LIBELLE varchar(255),
        ASS_VALEUR double precision,
        primary key (PK_ASS)
    )

    create table acceptation.ASSUREACCEPTATION_ASS (
        PK_ASS int identity not null,
        ASS_CODEGROUPEMENT varchar(255),
        UN_ASS_NUMSOC varchar(255),
        FK_ASS_PER int not null,
        primary key (PK_ASS)
    )

    create table acceptation.CARACTERISTIQUERISQUEACCEPTATION_CRIS (
        PK_VCR int identity not null,
        VCR_CODECARACTERISTIQUE varchar(255),
        VCR_MESSAGE_VALIDATION varchar(255),
        VCR_MULTIVALEURSTR varchar(255),
        VCR_VALEURBOOL bit,
        VCR_VALEURDATE datetime,
        VCR_VALEURNUM int,
        VCR_VALEURSTR varchar(255),
        FK_RIS_CRIS int,
        FK_ADRC_CRIS int,
        primary key (PK_VCR)
    )

    create table acceptation.CONTRAT_CON (
        PK_CON int identity not null,
        CON_CODE_BRANCHE varchar(255),
        CON_CODE_DOSSIER varchar(255),
        CON_CODE_FRACTION varchar(255),
        CON_CODE_NIVEAU_FRANCHISE varchar(255),
        CON_CODE_OFFRE varchar(255),
        CON_CODE_PRODUIT varchar(255),
        CON_CODE_PROPO varchar(255),
        CON_COMPLET bit,
        CON_DATE_ACCEPT datetime,
        CON_DTEFFET datetime,
        CON_DTEFFETINITIALE datetime,
        CON_DT_ENVOI_OFFRE datetime,
        CON_DTMODIFICATION datetime,
        CON_DTTERME datetime,
        CON_ECHEANCE int,
        CON_ETAT int,
        CON_EXONERATION_TAXE int,
        CON_LIBELLE_FRACTION varchar(255),
        CON_LIB_NIVEAU_FRANCHISE varchar(255),
        CON_LIBELLE_PROPO varchar(255),
        CON_LIBELLE_VERSION varchar(255),
        CON_MODIFIEUR varchar(255),
        CON_MODULATION numeric(19,2),
        UN_CON_NUMERO varchar(255),
        CON_NUMERO_ACCESSORY varchar(255),
        CON_PRELEVEMENT bit,
        CON_PREAVIS_RESIL_ASSURE int,
        CON_PREAVIS_RESIL_ASSUREUR int,
        CON_REVISABLE bit,
        FK_CON_PER int not null,
        FK_CON_ASS int not null,
        FK_CON_COV int,
        FK_CON_MCO int,
        FK_CON_PROT int,
        FK_CON_REF int,
        primary key (PK_CON)
    )

    create table acceptation.CONTRIBUTION_CTR (
        PK_CTR int identity not null,
        CTR_CODE varchar(255),
        CTR_LIBELLE varchar(255),
        FK_CTR_MCO int,
        FK_CON_CTR int,
        primary key (PK_CTR)
    )

    create table acceptation.DISPOSITIONPARTICULIERE_DIS (
        PK_DIS int identity not null,
        DIS_CODE varchar(255),
        DIS_CODEOBJETREFERENT varchar(255),
        DIS_LIBELLEOBJETREFERENT varchar(255),
        DIS_TEXTE TEXT,
        DIS_TITRE varchar(255),
        DIS_TYPE varchar(255),
        FK_CON_DIS int,
        primary key (PK_DIS)
    )

    create table acceptation.DOCUMENT_DOC (
        DOC_TYPE varchar(31) not null,
        PK_DOC int identity not null,
        DOC_CODEDOC varchar(255),
        DOC_DTENVOI datetime,
        DOC_LIBELLEDOC varchar(255),
        DOC_NBRE_EXEMP int,
        DOC_GED bit,
        FK_CON_DOC int,
        primary key (PK_DOC)
    )

    create table acceptation.GARANTIEACCEPTATION_GAR (
        PK_GAR int identity not null,
        GAR_CARACTERE int,
        GAR_CODE varchar(255),
        GAR_CODEGROUPEGAR varchar(255),
        GAR_DTDEBUTEFFET datetime,
        GAR_DTFINEFFET datetime,
        GAR_LIBELLE varchar(255),
        GAR_LIBELLEGROUPEGAR varchar(255),
        GAR_MTFRANCHISE numeric(19,2),
        GAR_UNITE_FRANCHISE int,
        FK_GAR_ASS int,
        FK_GAR_MCO int,
        FK_RIS_GAR int,
        primary key (PK_GAR)
    )

    create table acceptation.INTERLOCUTEUR_INT (
        PK_INT int identity not null,
        INT_ACTIVITE varchar(255),
        INT_CIVILITE varchar(255),
        INT_COURIEL varchar(255),
        INT_FONCTION varchar(255),
        INT_NOM varchar(255),
        INT_PRENOM varchar(255),
        INT_TEL varchar(255),
        FK_INT_ADR int,
        FK_PER_INT int,
        primary key (PK_INT)
    )

    create table acceptation.MODEPAIEMENT_DIS (
        PK_DIS int identity not null,
        DIS_CODE varchar(255),
        DIS_CODEOBJETREFERENT varchar(255),
        DIS_LIBELLEOBJETREFERENT varchar(255),
        DIS_TEXTE TEXT,
        DIS_TITRE varchar(255),
        DIS_TYPE varchar(255),
        primary key (PK_DIS)
    )

    create table acceptation.MONTANTSCONTRAT_MCO (
        PK_MCO int identity not null,
        MCO_MONTANTCOMMISSION numeric(19,2),
        MCO_MONTANTHORSTAXEBASEANNUELLE numeric(19,2),
        MCO_MONTANTTTCBASEANNUELLE numeric(19,2),
        MCO_TAUXBASEANNUELLE numeric(19,2),
        primary key (PK_MCO)
    )

    create table acceptation.PERSONNEACCEPTATION_PER (
        PK_PER int identity not null,
        UN_PER_NUMPERS varchar(255),
        PER_PROFIL varchar(255),
        PER_QUALITE varchar(255),
        PER_RAISONSOCIALE varchar(255),
        FK_PER_ADR int,
        FK_PER_AGE int,
        FK_PER_VEN int,
        primary key (PK_PER)
    )

    create table acceptation.RISQUEACCEPTATION_RIS (
        PK_RISQUE int identity not null,
        RIS_CODEFORMULE varchar(255),
        RIS_COMMISSION numeric(19,2),
        RIS_COMPLET bit,
        RIS_DTDEBUTEFFET datetime,
        RIS_DTFINEFFET datetime,
        RIS_DUREE int,
        RIS_LIBELLEFORMULE varchar(255),
        RIS_NUMRISQUE int,
        RIS_TYPERISQUE varchar(255),
        FK_RIS_ADR int,
        FK_RIS_MCO int,
        FK_CON_RIS int,
        primary key (PK_RISQUE)
    )

    create table affaire.BENEFICIAIRE_BEN (
        PK_BEN int identity not null,
        BEN_ACTIVITE varchar(255),
        BEN_CATEGORIEJURIDIQUE varchar(255),
        BEN_CODEAPE varchar(255),
        BEN_CODEACTIVITE varchar(255),
        BEN_DATEANCIENNETE datetime,
        BEN_DATERADIATION datetime,
        BEN_DEPARTEMENT varchar(255),
        BEN_EFFECTIFADHERENT int,
        BEN_EFFECTIFAGENT int,
        BEN_MOTIFRADIATION varchar(255),
        BEN_NOMBREHABITANTS int,
        BEN_NUMEROFINESS varchar(255),
        BEN_PAYS varchar(255),
        BEN_PROFIL varchar(255),
        BEN_QUALITE varchar(255),
        BEN_REGIONSMACL varchar(255),
        BEN_SERVICE varchar(255),
        BEN_TELEPHONE varchar(255),
        BEN_TYPEASSOCIATION varchar(255),
        BEN_VIP bit,
        FK_BEN_ADRT int,
        FK_BEN_PER int,
        primary key (PK_BEN)
    )

    create table affaire.DEMANDEUR_DEM (
        PK_DEM int identity not null,
        DEM_CATEGORIEJURIDIQUE varchar(255),
        DEM_CODECOURTIER varchar(255),
        DEM_DATERADIATION datetime,
        DEM_DEPARTEMENT varchar(255),
        DEM_MOTIFRADIATION varchar(255),
        DEM_NUMEROTELEPHONE varchar(255),
        DEM_PROFIL varchar(255),
        DEM_QUALITE varchar(255),
        FK_DEM_ADR int,
        FK_DEM_AGN int,
        FK_DEM_PER int,
        primary key (PK_DEM)
    )

    create table affaire.DOSSIER_DOS (
        PK_DOS int identity not null,
        DOS_CODECIBLE varchar(255),
        UN_DOS_CODE varchar(255),
        DOS_DTCREATION datetime,
        DOS_DTMODIFICATION datetime,
        DOS_ETAT int,
        DOS_MODIFIEUR varchar(255),
        FK_DOS_BEN int,
        FK_DOS_CONV int,
        FK_DOS_DEM int,
        FK_DOS_ENT int,
        FK_DOS_REF int,
        primary key (PK_DOS)
    )

    create table affaire.ENTRANT_ENT (
        PK_ENT int identity not null,
        ENT_CANALAPPORT varchar(255),
        ENT_DTDEMANDE datetime,
        ENT_DTRECEPTION datetime,
        ENT_DESCRIPTION TEXT,
        ENT_REFERENCE varchar(255),
        primary key (PK_ENT)
    )

    create table affaire.INSTRUCTION_INS (
        PK_INS int identity not null,
        INS_CODE varchar(255),
        INS_CODEPROTOCOLE varchar(255),
        INS_DTCREATION datetime,
        INS_ETAT int,
        INS_ISDISPONIBLE bit,
        INS_LIB varchar(255),
        INS_LIBPRODUIT varchar(255),
        INS_CODECONTRAT varchar(255),
        INS_NUMEROSOCIETAIRE varchar(255),
        FK_INS_REF int,
        FK_DOS_INS int,
        primary key (PK_INS)
    )

    create table affaire.INTERLOCUTEUR_INT (
        PK_INT int identity not null,
        INT_ACTIVITE varchar(255),
        INT_CIVILITE varchar(255),
        INT_COURIEL varchar(255),
        INT_FONCTION varchar(255),
        INT_NOM varchar(255),
        INT_PRENOM varchar(255),
        INT_TEL varchar(255),
        FK_INT_ADR int,
        FK_DEM_INT int,
        FK_BEN_INT int,
        primary key (PK_INT)
    )

    create table affaire.OFFRE_OFF (
        PK_OFF int identity not null,
        OFF_CODE varchar(255),
        OFF_COMMENTAIRE varchar(1023),
        OFF_DTCREATION datetime,
        OFF_DTENVOI datetime,
        OFF_ETAT int,
        OFF_REFERENCEGED varchar(255),
        OFF_TEXTEPERSO TEXT,
        FK_OFF_AGE int,
        FK_OFF_VEN int,
        FK_DOS_OFF int,
        primary key (PK_OFF)
    )

    create table affaire.PERSONNEDOSSIER_PER (
        PK_PER int identity not null,
        UN_PER_NUMEROPERSONNE varchar(255),
        PER_RAISONSOCIALE varchar(255),
        primary key (PK_PER)
    )

    create table affaire.PMACCESSORYPERSONNE_PMAC (
        PK_PMAC int identity not null,
        PMAC_CODEGROUPEMENT varchar(255),
        PMAC_NUMEROSOC varchar(255),
        PMAC_QUALITE varchar(255),
        FK_PER_PAMC int,
        primary key (PK_PMAC)
    )

    create table affaire.PROPOSITIONASSURANCE_PASS (
        PASS_ID int identity not null,
        PASS_CODE varchar(255),
        PASS_ETAT int,
        PASS_LIBEDITIQUE varchar(255),
        FK_OFF_PASS int,
        primary key (PASS_ID)
    )

    create table affaire.VERSIONAFFAIRE_VAF (
        PK_VOF int identity not null,
        VOF_CODE varchar(255),
        VOF_LIBEDITIQUE varchar(255),
        FK_PASS_VOFF int,
        primary key (PK_VOF)
    )

    create table commun.ADRESSEPERSONNE_ADRP (
        PK_ADRT int identity not null,
        ADRT_ADRESSE varchar(255),
        ADRT_CODEINSEE varchar(255),
        ADRT_CP varchar(255),
        ADRT_COMPLEMENTADR varchar(255),
        ADRT_LIBCOMMUNE varchar(255),
        ADRT_LIBVOIE varchar(255),
        ADRT_NUMVOIE varchar(255),
        ADRT_PAYS varchar(255),
        ADRT_VILLE varchar(255),
        primary key (PK_ADRT)
    )

    create table commun.ADRESSERISQUE_ADRR (
        PK_ADR int identity not null,
        ADR_ADRESSE varchar(255),
        ADR_ADRESSETYPE varchar(255),
        ADR_CODEPAYS varchar(255),
        ADR_CP varchar(255),
        ADR_COMPLEMENT varchar(255),
        ADR_VILLE varchar(255),
        primary key (PK_ADR)
    )

    create table commun.AGENCE_AGN (
        PK_AGN int identity not null,
        CODEAGENCE_AGN varchar(255),
        LIBELLEAGENCE_AGN varchar(255),
        primary key (PK_AGN)
    )

    create table commun.CONVENTION_COV (
        PK_COV int identity not null,
        COV_CODECONVENTION varchar(255),
        COV_DATECREATIONCONVENTION datetime,
        COV_DATEDEBUT datetime,
        COV_DATEFIN datetime,
        COV_IDAVENANT int,
        COV_IDCONVENTION int,
        COV_LIBELLE varchar(255),
        COV_NUMEROAVENANT int,
        FK_COV_TER int,
        primary key (PK_COV)
    )

    create table commun.DEPARTEMENT_DEP (
        PK_DEP int identity not null,
        DEP_CODEDEPARTEMENT varchar(255),
        DEP_LIBELLEDEPARTEMENT varchar(255),
        FK_DEP_TER int,
        primary key (PK_DEP)
    )

    create table commun.INFORMATIONPRODUIT_IPRO (
        PK_IPRO int identity not null,
        IPRO_CODECIBLE varchar(255),
        IPRO_CODEPRODUIT varchar(255),
        IPRO_LIBELLEPRODUIT varchar(255),
        IPRO_TAUXCOMMISSIONNEMENT numeric(19,2),
        IPRO_TAUXMAXIMUM numeric(19,2),
        IPRO_TAUXMINIMUM numeric(19,2),
        typeRemuneration int,
        FK_COV_IPRO int,
        primary key (PK_IPRO)
    )

    create table commun.PROTOCOLE_PROT (
        PK_PROT int identity not null,
        PROT_CODEPROTOCOLE varchar(255),
        PROT_CODECIBLE varchar(255),
        PROT_CODEPRODUIT varchar(255),
        PROT_LIBELLE varchar(255),
        PROT_TAUXCOMMISSIONNEMENT numeric(19,2),
        PROT_TAUXMAXIMUM numeric(19,2),
        PROT_TAUXMINIMUM numeric(19,2),
        typeRemuneration int,
        primary key (PK_PROT)
    )

    create table commun.REFERENT_REF (
        PK_REF int identity not null,
        REF_COURIEL varchar(255),
        REF_COURRIEL_GRP_PARENT varchar(255),
        REF_ID_GRP_ACTIF varchar(255),
        REF_ID_UTILISATEUR varchar(255),
        REF_LIB_GRP_PARENT varchar(255),
        UN_REF_LOGIN varchar(255),
        REF_NOM varchar(255),
        REF_TELEPHONE varchar(255),
        REF_PRENOM varchar(255),
        REF_TELEPHONE_GRP_PARENT varchar(255),
        primary key (PK_REF)
    )

    create table commun.TERRITOIRE_INTERVENTION_TER (
        PK_TER int identity not null,
        TER_CODE varchar(255),
        TER_NOM varchar(255),
        primary key (PK_TER)
    )

    create table commun.VENDEUR_VEN (
        PK_VEN int identity not null,
        CIVILITE_VEN varchar(255),
        CODEVENDEUR_VEN varchar(255),
        NOMVENDEUR_VEN varchar(255),
        PRENOM_VEN varchar(255),
        FK_VEN_ADRT int,
        FK_DEM_VEN int,
        primary key (PK_VEN)
    )

    create table instruction.ASSIETTEGARANTIERISQUE_ASGR (
        PK_ASGR int identity not null,
        ASGR_CODE varchar(255),
        ASGR_LIBELLEE varchar(255),
        ASGR_MODIFIABLE bit,
        ASGR_VALEUR double precision,
        primary key (PK_ASGR)
    )

    create table instruction.ASSUREVERSION_ASS (
        PK_ASS int identity not null,
        ASS_CODEGROUPEMENT varchar(255),
        ASS_NUMPERS varchar(255),
        ASS_NUMSOC varchar(255),
        ASS_PROFIL varchar(255),
        ASS_QUALITE varchar(255),
        ASS_RAISONSOCIALE varchar(255),
        primary key (PK_ASS)
    )

    create table instruction.BENEFICIAIREPROPO_BEN (
        PK_BEN int identity not null,
        BEN_CATEGORIEJURIDIQUE varchar(255),
        BEN_CODEAPE varchar(255),
        BEN_CODEACTIVITE varchar(255),
        BEN_CODECIBLE varchar(255),
        BEN_CODEGROUPEMENT varchar(255),
        BEN_CODEINSEE varchar(255),
        BEN_DATEANCIENNETE datetime,
        BEN_DEPARTEMENT varchar(255),
        BEN_EFFECTIFADHERENT int,
        BEN_EFFECTIFAGENT int,
        BEN_NOMBREHABITANTS int,
        BEN_NUMEROFINESS varchar(255),
        BEN_NUMEROPERSONNE varchar(255),
        BEN_NUMEROSOCIETAIRE varchar(255),
        BEN_PAYS varchar(255),
        BEN_PROFIL varchar(255),
        BEN_QUALITE varchar(255),
        BEN_RAISONSOCIALE varchar(255),
        BEN_REGIONSMACL varchar(255),
        BEN_TYPEASSOCIATION varchar(255),
        BEN_VIP bit,
        primary key (PK_BEN)
    )

    create table instruction.CARACTERISTIQUERISQUEOBJET_CAR (
        PK_CAR int identity not null,
        CAR_CODE varchar(255),
        CAR_MULTIVALEURSTR varchar(255),
        CAR_VALEURBOOL bit,
        CAR_VALEURDATE datetime,
        CAR_VALEURNUM int,
        CAR_VALEURSTR varchar(255),
        FK_RISO_CAR int,
        primary key (PK_CAR)
    )

    create table instruction.CONTEXTE_CON (
        PK_CON int identity not null,
        CON_CODE_MOTIF varchar(255),
        CON_COMMENTAIRE TEXT,
        CON_DATE_CONTEXTE datetime,
        CON_LIBELLE_MOTIF varchar(255),
        CON_TYPE_CONTEXTE int,
        FK_PRO_CON int,
        primary key (PK_CON)
    )

    create table instruction.CONTRIBUTION_CON (
        PK_CON int identity not null,
        CON_CODE varchar(255),
        CON_LIB varchar(255),
        FK_COU_CON int,
        primary key (PK_CON)
    )

    create table instruction.COUVERTURE_COU (
        PK_COU int identity not null,
        COU_CODE varchar(255),
        COU_LIB varchar(255),
        COU_MODULATION numeric(19,2),
        FK_PRO_COU int,
        primary key (PK_COU)
    )

    create table instruction.DEMANDEURVERSION_DEM (
        PK_PER int identity not null,
        DEM_NUMPERS varchar(255),
        DEM_PROFIL varchar(255),
        DEM_QUALITE varchar(255),
        DEL_RAISONSOCIALE varchar(255),
        FK_DEM_AGE int,
        primary key (PK_PER)
    )

    create table instruction.DISPOSITIONPARTICULIERE_DIS (
        PK_DIS int identity not null,
        DIS_CODE varchar(255),
        DIS_CODEOBJETREFERENT varchar(255),
        DIS_LIBELLEOBJETREFERENT varchar(255),
        DIS_TEXTE TEXT,
        DIS_TITRE varchar(255),
        DIS_TYPE varchar(255),
        FK_PRO_DIS int,
        primary key (PK_DIS)
    )

    create table instruction.GARANTIERISQUE_GRIS (
        PK_GRIS int identity not null,
        GRIS_CARACTERISTIQUE int,
        GRIS_CODE varchar(255),
        GRIS_DTDEBUTEFFET datetime,
        GRIS_DTFINEFFET datetime,
        FK_GRIS_ASGR int,
        FK_RIS_GAR int,
        primary key (PK_GRIS)
    )

    create table instruction.GROUPEGARANTIESINISTRALITE_GRO (
        PK_GRO int identity not null,
        GRO_CODE varchar(255),
        GRO_LIB varchar(255),
        FK_SIN_GRO int,
        primary key (PK_GRO)
    )

    create table instruction.NIVEAUFRANCHISEGARANTIE_NFG (
        PK_NFG int identity not null,
        NFG_BASEANNUELLEHORSTAXE numeric(19,2),
        NFG_BASEANNUELLETTC numeric(19,2),
        NFG_CODENIVEAUFRANCHISE varchar(255),
        NFG_MONTANTFRANCHISE numeric(19,2),
        NFG_PRORATAHORSTAXE numeric(19,2),
        NFG_PRORATATTC numeric(19,2),
        NFG_TAUXBASEANNUELLE numeric(19,2),
        NFG_TAUXPRORATA numeric(19,2),
        NFG_UNITE_FRANCHISE int,
        FK_GRIS_NFG int,
        primary key (PK_NFG)
    )

    create table instruction.PERIODEOBSERVATIONSINISTRALITE_PER (
        PK_PER int identity not null,
        PER_ANNEEPERIODE int,
        PER_DTDEBUTPERIODE datetime,
        PER_DATEFINPERIODE datetime,
        PER_MONTANTSINISTRES numeric(19,2),
        PER_NOMBRESINISTRES int,
        FK_SIN_PER int,
        primary key (PK_PER)
    )

    create table instruction.PROPOSITIONSTANDARD_PRO (
        PK_PRO int identity not null,
        PRO_CODEDOSSIER varchar(255),
        UN_PRO_CODE varchar(255),
        PRO_DTCREATION datetime,
        PRO_DTDEBUTEFFET datetime,
        PRO_DTMODIFICATION datetime,
        PRO_DTDATETERME datetime,
        PRO_DELAIVALIDITE int,
        PRO_ECHEANCE int,
        PRO_ETAT int,
        PRO_EXONERATION int,
        PRO_LCI numeric(19,2),
        PRO_LIB varchar(255),
        PRO_MODIFIEUR varchar(255),
        PRO_NUMEOCYCLE int,
        PRO_NUMEROMAXVERSION int,
        PRO_SEQDP int,
        PRO_PREAVISRESILIATIONASSURE int,
        PRO_PREAVISRESILIATIONASSUREUR int,
        PRO_PRODUIT varchar(255),
        PRO_REDACTEUR varchar(255),
        PRO_REVISION bit,
        FK_PRO_BEN int,
        FK_PRO_COV int,
        FK_PRO_PROT int,
        FK_PRO_REF int,
        FK_PRO_SIN int,
        primary key (PK_PRO)
    )

    create table instruction.RISQUEOBJET_RISO (
        PK_RISO int identity not null,
        RISO_CODE varchar(255),
        RISO_DTDEBUTEFFET datetime,
        RISO_DTFINEFFET datetime,
        RISO_DUREE varchar(255),
        RISO_NUMERORISQUE int,
        FK_RISO_ADR int,
        FK_PRO_RISO int,
        primary key (PK_RISO)
    )

    create table instruction.RISQUE_RIS (
        PK_RIS int identity not null,
        RIS_CODEFORMULE varchar(255),
        RIS_FRAISGESTION numeric(19,2),
        FK_RIS_RISO int,
        FK_COU_RIS int,
        primary key (PK_RIS)
    )

    create table instruction.SINISTRALITEPARGROUPEGARANTIE_SIG (
        PK_SIG int identity not null,
        SIG_MONTANTSINISTRES numeric(19,2),
        SIG_NOMBRESINISTRES int,
        FK_SIG_GRO int,
        FK_PER_SIG int,
        primary key (PK_SIG)
    )

    create table instruction.SINISTRALITE_SIN (
        PK_SIN int identity not null,
        SIN_COUTMOYEN numeric(19,2),
        SIN_DTDEBUTOBSERVATION datetime,
        SIN_DTFINOBSERVATION datetime,
        SIN_FREQUENCE numeric(19,4),
        SIN_NOMBREEXERCICES numeric(19,2),
        SIN_SAISIESINISTRALITE bit,
        SIN_SINISTRALITEINCONNUE bit,
        SIN_SMAE numeric(19,2),
        SIN_TYPEASSIETTESINISTRALITE varchar(255),
        SIN_VALEURASSIETTE numeric(19,2),
        primary key (PK_SIN)
    )

    create table instruction.TARIFCONTRIBUTIONPARNIVEAUFRANCHISE_TCN (
        PK_TCN int identity not null,
        TCN_BASEANNUELLEHORSTAXES numeric(19,2),
        TCN_BASEANNUELLETTC numeric(19,2),
        CODENIVEAUFRANCHISE varchar(255),
        TCN_LIBELLELONGNIVEAUFRANCHISE varchar(255),
        TCN_LIBELLENIVEAUFRANCHISE varchar(255),
        TCN_PRORATAHORSTAXES numeric(19,2),
        TCN_PRORATATTC numeric(19,2),
        TCN_TAUXBASEANNUELLE numeric(19,2),
        TCN_TAUXPRORATA numeric(19,2),
        FK_CON_TCN int,
        primary key (PK_TCN)
    )

    create table instruction.TARIFCOUVERTUREPARNIVEAUFRANCHISE_TCN (
        PK_TCN int identity not null,
        TCN_CODENIVEAUFRANCHISE varchar(255),
        TCN_MONTANTCOMMISSION numeric(19,2),
        TCN_TOTALBASEANNUELLEHORSTAXEDESRISQUES numeric(19,2),
        TCN_TOTALBASE_ANNUELLETTCDESRISQUES numeric(19,2),
        TCN_TOTALPRORATAHORSTAXEDESRISQUES numeric(19,2),
        TCN_TOTALPRORATATTCDESRISQUES numeric(19,2),
        TCN_TOTALTAUXBASEANNUELLEDESRISQUES numeric(19,2),
        TCN_TOTALTAUXPRORATADESRISQUES numeric(19,2),
        FK_COU_TRN int,
        primary key (PK_TCN)
    )

    create table instruction.TARIFRISQUEPARNIVEAUFRANCHISE_TRN (
        PK_TRN int identity not null,
        TRN_CODENIVEAUFRANCHISE varchar(255),
        TRN_Commission numeric(19,2),
        TRN_TOTALBASEANNUELLEHORSTAXEDESGARANTIES numeric(19,2),
        TRN_TOTALBASEANNUELLETTCDESGARANTIES numeric(19,2),
        TRN_TOTALPRORATAHORSTAXEDESGARANTIES numeric(19,2),
        TRN_TOTALPRORATATTCDESGARANTIES numeric(19,2),
        TRN_TOTALTauxBASEANNUELLEDESGARANTIES numeric(19,2),
        TRN_TOTALTAUXPRORATADESGARANTIES numeric(19,2),
        FK_RIS_TRN int,
        primary key (PK_TRN)
    )

    create table instruction.VERSIONASSIETTEGARANTIE_VASS (
        PK_VASS int identity not null,
        CODE_VASS varchar(255),
        LIBELLE_VASS varchar(255),
        VALEUR_VASS double precision,
        primary key (PK_VASS)
    )

    create table instruction.VERSIONCARACTERISTIQUERISQUEOBJET_VCR (
        PK_VCR int identity not null,
        VCR_CODECARACTERISTIQUE varchar(255),
        VCR_MULTIVALEURSTR varchar(255),
        VCR_VALEURBOOL bit,
        VCR_VALEURDATE datetime,
        VCR_VALEURNUM int,
        VCR_VALEURSTR varchar(255),
        FK_VRIS_VCR int,
        primary key (PK_VCR)
    )

    create table instruction.VERSIONCONTRIBUTION_VCO (
        PK_VCO int identity not null,
        VCO_BASEANNUELLEHORSTAXES numeric(19,2),
        VCO_BASEANNUELLETTC numeric(19,2),
        VCO_CODE varchar(255),
        VCO_LIB varchar(255),
        VCO_PRORATAHORSTAXES numeric(19,2),
        VCO_PRORATATTC numeric(19,2),
        VCO_TAUXBASEANNUELLE numeric(19,2),
        VCO_TAUXPRORATA numeric(19,2),
        FK_VER_CON int,
        primary key (PK_VCO)
    )

    create table instruction.VERSIONDISPOSITIONPARTICULIERE_VDIS (
        PK_VDIS int identity not null,
        VDIS_CODE varchar(255),
        VDIS_CODEOBJETREFERENT varchar(255),
        VDIS_LIBELLEOBJETREFERENT varchar(255),
        VDIS_TEXTE TEXT,
        VDIS_TITRE varchar(255),
        VDIS_TYPE varchar(255),
        FK_VER_VDIS int,
        primary key (PK_VDIS)
    )

    create table instruction.VERSIONGARANTIE_VGA (
        PK_VGA int identity not null,
        VGA_CARACTERISTIQUE int,
        VGA_CODE varchar(255),
        VGA_CODEGROUPEGARANTIE varchar(255),
        VGA_DTDEBUTEFFET datetime,
        VGA_DTFINEFFET datetime,
        VGA_LIB varchar(255),
        VGA_LIBELLEGROUPEGARANTIE varchar(255),
        VGA_MONTANTBASEANNUELLEHORSTAXE numeric(19,2),
        VGA_MONTANTBASEANNUELLETTC numeric(19,2),
        VGA_MONTANTFRANCHISE numeric(19,2),
        VGA_MONTANTPRORATEHORSTAXE numeric(19,2),
        VGA_MONTANTPRORATETTC numeric(19,2),
        VGA_MONTANTVALEUR numeric(19,2),
        VGA_TAUXBASEANNUELLE numeric(19,2),
        VGA_TAUXPRORATE numeric(19,2),
        VGA_UNITE_FRANCHISE int,
        VGA_UNITE_MONTANT int,
        FK_VGA_VASS int,
        FK_VRIS_VGA int,
        primary key (PK_VGA)
    )

    create table instruction.VERSIONINSTRUCTION_VER (
        PK_VER int identity not null,
        VER_CODEBRANCHE varchar(255),
        VER_CODECOUVERTURE varchar(255),
        VER_CODENIVEAUFRANCHISE varchar(255),
        VER_CODEPRODUIT varchar(255),
        VER_CODEPROPOSITION varchar(255),
        VER_CODE varchar(255),
        VER_CONV varchar(255),
        VER_DTACCEPTATION datetime,
        VER_DTEFFET datetime,
        VER_DTPREMIERENVOI datetime,
        VER_DTTERME datetime,
        VER_DELAIVALIDITE int,
        VER_ECHEANCE int,
        VER_ETATVERSION int,
        VER_EXONERATIONTAXE int,
        VER_LIBELLECOURTNIVEAUFRANCHISE varchar(255),
        VER_LIBELLELONGNIVEAUFRANCHISE varchar(255),
        VER_LIBELLEPROPOSISITON varchar(255),
        VER_LIB varchar(255),
        VER_MODULATION numeric(19,2),
        VER_MONTANTCOMMISSION numeric(19,2),
        VER_NUMEROCYCLE int,
        VER_PREAVISRESILIATIONASSURE int,
        VER_PREAVISRESILIATIONASSUREUR int,
        VER_REVISION bit,
        VER_TOTALBASEANNUELLEHORSTAXERISQUES numeric(19,2),
        VER_TOTALBASEANNUELLETTCRISQUES numeric(19,2),
        VER_TOTALPRORATAHORSTAXERISQUES numeric(19,2),
        VER_TOTALPRORATATTCRISQUES numeric(19,2),
        VER_TOTALTAUXBASEANNUELLERISQUES numeric(19,2),
        VER_TOTALTAUXPRORATARISQUES numeric(19,2),
        FK_VER_ASS int,
        FK_VER_DEM int,
        FK_VER_PROT int,
        FK_VER_REF int not null,
        FK_PRO_VER int,
        primary key (PK_VER)
    )

    create table instruction.VERSIONRISQUE_VRIS (
        PK_VRIS int identity not null,
        VRIS_CODEFORMULE varchar(255),
        VRIS_COMISSION numeric(19,2),
        VRIS_DTDEBUTEFFET datetime,
        VRIS_DTFINEFFET datetime,
        VRIS_DUREE int,
        VRIS_LIBELLEFORMULE varchar(255),
        VRIS_NUMERORISQUE int,
        VRIS_TOTALHORSTAXEBASESANNUELLESGARANTIES numeric(19,2),
        VRIS_TOTALPRORATAHORSTAXEGARANTIES numeric(19,2),
        VRIS_TOTALPRORATATTCGARANTIES numeric(19,2),
        VRIS_TOTALTAUXBASESANNUELLESGARANTIES numeric(19,2),
        VRIS_TOTALTAUXPRORATAGARANTIES numeric(19,2),
        VRIS_TOTALTTCBASESANNUELLESGARANTIES numeric(19,2),
        VRIS_TYPERISQUE varchar(255),
        FK_VRIS_ADR int,
        FK_VER_VRIS int,
        primary key (PK_VRIS)
    )

    alter table acceptation.ASSUREACCEPTATION_ASS 
        add constraint UK_ASS_NUMSOC  unique (UN_ASS_NUMSOC)

    alter table acceptation.CONTRAT_CON 
        add constraint UK_CON_NUMERO  unique (UN_CON_NUMERO)

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint UK_PER_NUMPERS  unique (UN_PER_NUMPERS)

    alter table affaire.DOSSIER_DOS 
        add constraint UK_DOS_CODE  unique (UN_DOS_CODE)

    alter table affaire.PERSONNEDOSSIER_PER 
        add constraint UK_PER_NUMEROPERSONNE  unique (UN_PER_NUMEROPERSONNE)

    alter table commun.CONVENTION_COV 
        add constraint CONTRAINTE_UNIQUE_CONVENTION  unique (COV_CODECONVENTION, COV_NUMEROAVENANT, COV_LIBELLE)

    alter table commun.REFERENT_REF 
        add constraint UK_REF_LOGIN  unique (UN_REF_LOGIN)

    alter table instruction.DEMANDEURVERSION_DEM 
        add constraint UK_DEM_NUMPERS  unique (DEM_NUMPERS)

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint UK_PRO_CODE  unique (UN_PRO_CODE)

    alter table acceptation.ASSUREACCEPTATION_ASS 
        add constraint FK_ASSUREACCEPTATION_ASS_PERSONNEACCEPTATION_PER 
        foreign key (FK_ASS_PER) 
        references acceptation.PERSONNEACCEPTATION_PER

    alter table acceptation.CARACTERISTIQUERISQUEACCEPTATION_CRIS 
        add constraint FK_apcx2w75bdx5u6ct4u04vq0hn 
        foreign key (FK_RIS_CRIS) 
        references acceptation.RISQUEACCEPTATION_RIS

    alter table acceptation.CARACTERISTIQUERISQUEACCEPTATION_CRIS 
        add constraint FK_gd1rm0s5p06keoydc97qwip2p 
        foreign key (FK_ADRC_CRIS) 
        references acceptation.ADRESSERISQUECONTRAT_ADRC

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_PERSONNEACCEPTATION_PER 
        foreign key (FK_CON_PER) 
        references acceptation.PERSONNEACCEPTATION_PER

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_ASSUREACCEPTATION_ASS 
        foreign key (FK_CON_ASS) 
        references acceptation.ASSUREACCEPTATION_ASS

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_CONVENTION_COV 
        foreign key (FK_CON_COV) 
        references commun.CONVENTION_COV

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_MONTANTSCONTRAT_MCO 
        foreign key (FK_CON_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_PROTOCOLE_PROT 
        foreign key (FK_CON_PROT) 
        references commun.PROTOCOLE_PROT

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_REFERENT_REF 
        foreign key (FK_CON_REF) 
        references commun.REFERENT_REF

    alter table acceptation.CONTRIBUTION_CTR 
        add constraint FK_CONTRIBUTION_CTR_MONTANTSCONTRAT_MCO 
        foreign key (FK_CTR_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.CONTRIBUTION_CTR 
        add constraint FK_en54bt4a7wamg8kw07gd4jcoy 
        foreign key (FK_CON_CTR) 
        references acceptation.CONTRAT_CON

    alter table acceptation.DISPOSITIONPARTICULIERE_DIS 
        add constraint FK_1hsw0wl2qqefe3512r54rwgh0 
        foreign key (FK_CON_DIS) 
        references acceptation.CONTRAT_CON

    alter table acceptation.DOCUMENT_DOC 
        add constraint FK_47jvq865s8gwsx81v9mww46eh 
        foreign key (FK_CON_DOC) 
        references acceptation.CONTRAT_CON

    alter table acceptation.GARANTIEACCEPTATION_GAR 
        add constraint FK_GARANTIEACCEPTATION_GAR_ASSIETTEACCEPTATION_ASS 
        foreign key (FK_GAR_ASS) 
        references acceptation.ASSIETTEACCEPTATION_ASS

    alter table acceptation.GARANTIEACCEPTATION_GAR 
        add constraint FK_GARANTIEACCEPTATION_GAR_MONTANTSCONTRAT_MCO 
        foreign key (FK_GAR_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.GARANTIEACCEPTATION_GAR 
        add constraint FK_r6v6jbo6v7mv5gerofe1lxaep 
        foreign key (FK_RIS_GAR) 
        references acceptation.RISQUEACCEPTATION_RIS

    alter table acceptation.INTERLOCUTEUR_INT 
        add constraint FK_INTERLOCUTEUR_INT_ADRESSE_ADR 
        foreign key (FK_INT_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table acceptation.INTERLOCUTEUR_INT 
        add constraint FK_7tm2omv03q6mkr1oktprsgwgp 
        foreign key (FK_PER_INT) 
        references acceptation.PERSONNEACCEPTATION_PER

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint FK_PERSONNEACCEPTATION_PER_ADRESSE_ADR 
        foreign key (FK_PER_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint FK_PERSONNEACCEPTATION_PER_AGENCE_AGN 
        foreign key (FK_PER_AGE) 
        references commun.AGENCE_AGN

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint FK_PERSONNEACCEPTATION_PER_VENDEUR_VEN 
        foreign key (FK_PER_VEN) 
        references commun.VENDEUR_VEN

    alter table acceptation.RISQUEACCEPTATION_RIS 
        add constraint FK_RISQUEACCEPTATION_RIS_ADRESSEACCEPTATION_ADR 
        foreign key (FK_RIS_ADR) 
        references acceptation.ADRESSERISQUECONTRAT_ADRC

    alter table acceptation.RISQUEACCEPTATION_RIS 
        add constraint FK_RISQUEACCEPTATION_RIS_MONTANTSCONTRAT_MCO 
        foreign key (FK_RIS_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.RISQUEACCEPTATION_RIS 
        add constraint FK_l41yvvswglrh1v3dthj87j2m5 
        foreign key (FK_CON_RIS) 
        references acceptation.CONTRAT_CON

    alter table affaire.BENEFICIAIRE_BEN 
        add constraint FK_BENEFICIAIRE_BEN_ADRESSE_ADRT 
        foreign key (FK_BEN_ADRT) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table affaire.BENEFICIAIRE_BEN 
        add constraint FK_BENEFICIAIRE_BEN_PERSONNEDOSSIER_PER 
        foreign key (FK_BEN_PER) 
        references affaire.PERSONNEDOSSIER_PER

    alter table affaire.DEMANDEUR_DEM 
        add constraint FK_DEMANDEUR_DEM_ADRESSE_ADRT 
        foreign key (FK_DEM_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table affaire.DEMANDEUR_DEM 
        add constraint FK_DEMANDEUR_DEM_AGENCE_AGN 
        foreign key (FK_DEM_AGN) 
        references commun.AGENCE_AGN

    alter table affaire.DEMANDEUR_DEM 
        add constraint FK_DEMANDEUR_DEM_PERSONNEDOSSIER_PER 
        foreign key (FK_DEM_PER) 
        references affaire.PERSONNEDOSSIER_PER

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_BENEFICIAIRE_BEN 
        foreign key (FK_DOS_BEN) 
        references affaire.BENEFICIAIRE_BEN

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_CONVENTION_COV 
        foreign key (FK_DOS_CONV) 
        references commun.CONVENTION_COV

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_DEMANDEUR_DEM 
        foreign key (FK_DOS_DEM) 
        references affaire.DEMANDEUR_DEM

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_ENTRANT_ENT 
        foreign key (FK_DOS_ENT) 
        references affaire.ENTRANT_ENT

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_REFERENT_REF 
        foreign key (FK_DOS_REF) 
        references commun.REFERENT_REF

    alter table affaire.INSTRUCTION_INS 
        add constraint FK_INSTRUCTION_INS_REFERENT_REF 
        foreign key (FK_INS_REF) 
        references commun.REFERENT_REF

    alter table affaire.INSTRUCTION_INS 
        add constraint FK_cppaik1h7t7f1ib6hmtdavkex 
        foreign key (FK_DOS_INS) 
        references affaire.DOSSIER_DOS

    alter table affaire.INTERLOCUTEUR_INT 
        add constraint FK_INTERLOCUTEUR_INT_ADRESSE_ADRT 
        foreign key (FK_INT_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table affaire.INTERLOCUTEUR_INT 
        add constraint FK_amdamojs32x4asv0fi7w5j5j1 
        foreign key (FK_DEM_INT) 
        references affaire.DEMANDEUR_DEM

    alter table affaire.INTERLOCUTEUR_INT 
        add constraint FK_a9xwlmvwnaiip8vjf57suqxfy 
        foreign key (FK_BEN_INT) 
        references affaire.BENEFICIAIRE_BEN

    alter table affaire.OFFRE_OFF 
        add constraint FK_OFFRE_OFF_AGENCE_AGN 
        foreign key (FK_OFF_AGE) 
        references commun.AGENCE_AGN

    alter table affaire.OFFRE_OFF 
        add constraint FK_OFFRE_OFF_VENDEUR_VEN 
        foreign key (FK_OFF_VEN) 
        references commun.VENDEUR_VEN

    alter table affaire.OFFRE_OFF 
        add constraint FK_qab731jpe7h80f0xv5ug6228p 
        foreign key (FK_DOS_OFF) 
        references affaire.DOSSIER_DOS

    alter table affaire.PMACCESSORYPERSONNE_PMAC 
        add constraint FK_rdi6ffyixsrvq70avht18euvf 
        foreign key (FK_PER_PAMC) 
        references affaire.PERSONNEDOSSIER_PER

    alter table affaire.PROPOSITIONASSURANCE_PASS 
        add constraint FK_1kn35xf62b7e5a7upc3203yrt 
        foreign key (FK_OFF_PASS) 
        references affaire.OFFRE_OFF

    alter table affaire.VERSIONAFFAIRE_VAF 
        add constraint FK_chdn4lsgj1gh4wwe1fjp15n04 
        foreign key (FK_PASS_VOFF) 
        references affaire.PROPOSITIONASSURANCE_PASS

    alter table commun.CONVENTION_COV 
        add constraint FK_CONVENTION_COV_TERRITOIRE_INTERVENTION_TER 
        foreign key (FK_COV_TER) 
        references commun.TERRITOIRE_INTERVENTION_TER

    alter table commun.DEPARTEMENT_DEP 
        add constraint FK_3mo7qfam7pg35x13sxht49wu5 
        foreign key (FK_DEP_TER) 
        references commun.TERRITOIRE_INTERVENTION_TER

    alter table commun.INFORMATIONPRODUIT_IPRO 
        add constraint FK_ci7nr9t4bvs24gkcfesn0qv76 
        foreign key (FK_COV_IPRO) 
        references commun.CONVENTION_COV

    alter table commun.VENDEUR_VEN 
        add constraint FK_VENDEUR_VEN_ADRESSE_ADRT 
        foreign key (FK_VEN_ADRT) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table commun.VENDEUR_VEN 
        add constraint FK_7u702ffvwc4elbag6jcsq5ut2 
        foreign key (FK_DEM_VEN) 
        references affaire.DEMANDEUR_DEM

    alter table instruction.CARACTERISTIQUERISQUEOBJET_CAR 
        add constraint FK_h9ggmoqnbdcti12pf38k24v0l 
        foreign key (FK_RISO_CAR) 
        references instruction.RISQUEOBJET_RISO

    alter table instruction.CONTEXTE_CON 
        add constraint FK_do3n1c92yq2b89rvna04uvwur 
        foreign key (FK_PRO_CON) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.CONTRIBUTION_CON 
        add constraint FK_etw5wq6hw5a2o46hubmew33vo 
        foreign key (FK_COU_CON) 
        references instruction.COUVERTURE_COU

    alter table instruction.COUVERTURE_COU 
        add constraint FK_iqqgc3v1y0i3jgq8bwwt4w4wn 
        foreign key (FK_PRO_COU) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.DEMANDEURVERSION_DEM 
        add constraint FK_DEMANDEURVERSION_DEM_AGENCE_AGN 
        foreign key (FK_DEM_AGE) 
        references commun.AGENCE_AGN

    alter table instruction.DISPOSITIONPARTICULIERE_DIS 
        add constraint FK_2ggknfgad1o6mrxb6s6gdjkfq 
        foreign key (FK_PRO_DIS) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.GARANTIERISQUE_GRIS 
        add constraint FK_GARANTIERISQUE_GRIS_ASSIETTEGARANTIERISQUE_ASGR 
        foreign key (FK_GRIS_ASGR) 
        references instruction.ASSIETTEGARANTIERISQUE_ASGR

    alter table instruction.GARANTIERISQUE_GRIS 
        add constraint FK_ivx0mx881javssvp0fgwl488v 
        foreign key (FK_RIS_GAR) 
        references instruction.RISQUE_RIS

    alter table instruction.GROUPEGARANTIESINISTRALITE_GRO 
        add constraint FK_ti7bad05bwahvlvqsdfl4qr95 
        foreign key (FK_SIN_GRO) 
        references instruction.SINISTRALITE_SIN

    alter table instruction.NIVEAUFRANCHISEGARANTIE_NFG 
        add constraint FK_fc5a431a28gpup0unvfbptphy 
        foreign key (FK_GRIS_NFG) 
        references instruction.GARANTIERISQUE_GRIS

    alter table instruction.PERIODEOBSERVATIONSINISTRALITE_PER 
        add constraint FK_cp8eftjvpntossobe2ofgpoa9 
        foreign key (FK_SIN_PER) 
        references instruction.SINISTRALITE_SIN

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_BENEFICIAIREPROPO_BEN 
        foreign key (FK_PRO_BEN) 
        references instruction.BENEFICIAIREPROPO_BEN

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_CONVENTION_COV 
        foreign key (FK_PRO_COV) 
        references commun.CONVENTION_COV

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_PROTOCOLE_PROT 
        foreign key (FK_PRO_PROT) 
        references commun.PROTOCOLE_PROT

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_REFERENT_REF 
        foreign key (FK_PRO_REF) 
        references commun.REFERENT_REF

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_SINISTRALITE_SIN 
        foreign key (FK_PRO_SIN) 
        references instruction.SINISTRALITE_SIN

    alter table instruction.RISQUEOBJET_RISO 
        add constraint FK_RISQUEOBJET_RISO_ADRESSE_ADR 
        foreign key (FK_RISO_ADR) 
        references commun.ADRESSERISQUE_ADRR

    alter table instruction.RISQUEOBJET_RISO 
        add constraint FK_2w4agx0t33fgtkfxkf8ktql0r 
        foreign key (FK_PRO_RISO) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.RISQUE_RIS 
        add constraint FK_RISQUE_RIS_RISQUEOBJET_RISO 
        foreign key (FK_RIS_RISO) 
        references instruction.RISQUEOBJET_RISO

    alter table instruction.RISQUE_RIS 
        add constraint FK_9cuy22eu0xkm62cvqfjmt2eur 
        foreign key (FK_COU_RIS) 
        references instruction.COUVERTURE_COU

    alter table instruction.SINISTRALITEPARGROUPEGARANTIE_SIG 
        add constraint FK_SINISTRALITEPARGROUPEGARANTIE_SIG_GROUPEGARANTIESINISTRALITE_GRO 
        foreign key (FK_SIG_GRO) 
        references instruction.GROUPEGARANTIESINISTRALITE_GRO

    alter table instruction.SINISTRALITEPARGROUPEGARANTIE_SIG 
        add constraint FK_jjjnecv8mic6ge7lxx28ftf14 
        foreign key (FK_PER_SIG) 
        references instruction.PERIODEOBSERVATIONSINISTRALITE_PER

    alter table instruction.TARIFCONTRIBUTIONPARNIVEAUFRANCHISE_TCN 
        add constraint FK_hlt7xdmsprqtkn1yv41n84h29 
        foreign key (FK_CON_TCN) 
        references instruction.CONTRIBUTION_CON

    alter table instruction.TARIFCOUVERTUREPARNIVEAUFRANCHISE_TCN 
        add constraint FK_gk9jako0b7ia2ga1l4o909tq3 
        foreign key (FK_COU_TRN) 
        references instruction.COUVERTURE_COU

    alter table instruction.TARIFRISQUEPARNIVEAUFRANCHISE_TRN 
        add constraint FK_853r0uux7xs7b4vd51nh7isdm 
        foreign key (FK_RIS_TRN) 
        references instruction.RISQUE_RIS

    alter table instruction.VERSIONCARACTERISTIQUERISQUEOBJET_VCR 
        add constraint FK_6emit1pj1qjr3lk2nngq05uyf 
        foreign key (FK_VRIS_VCR) 
        references instruction.VERSIONRISQUE_VRIS

    alter table instruction.VERSIONCONTRIBUTION_VCO 
        add constraint FK_mxxngx5rykekefhfdrhf61ig 
        foreign key (FK_VER_CON) 
        references instruction.VERSIONINSTRUCTION_VER

    alter table instruction.VERSIONDISPOSITIONPARTICULIERE_VDIS 
        add constraint FK_4q0qr8pmcdli4pym47nt13art 
        foreign key (FK_VER_VDIS) 
        references instruction.VERSIONINSTRUCTION_VER

    alter table instruction.VERSIONGARANTIE_VGA 
        add constraint FK_VERSIONGARANTIE_VGA_VERSIONASSIETTEGARANTIE_VASS 
        foreign key (FK_VGA_VASS) 
        references instruction.VERSIONASSIETTEGARANTIE_VASS

    alter table instruction.VERSIONGARANTIE_VGA 
        add constraint FK_q2974x6qh0i0jrrfji0gj4vhj 
        foreign key (FK_VRIS_VGA) 
        references instruction.VERSIONRISQUE_VRIS

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_ASSUREVERSION_ASS 
        foreign key (FK_VER_ASS) 
        references instruction.ASSUREVERSION_ASS

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_DEMANDEURVERSION_DEM 
        foreign key (FK_VER_DEM) 
        references instruction.DEMANDEURVERSION_DEM

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_PROTOCOLE_PROT 
        foreign key (FK_VER_PROT) 
        references commun.PROTOCOLE_PROT

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_REFERENT_REF 
        foreign key (FK_VER_REF) 
        references commun.REFERENT_REF

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_9pemychmheswndmel3gabans8 
        foreign key (FK_PRO_VER) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.VERSIONRISQUE_VRIS 
        add constraint FK_VERSIONRISQUE_VRIS_ADRESSE_ADR 
        foreign key (FK_VRIS_ADR) 
        references commun.ADRESSERISQUE_ADRR

    alter table instruction.VERSIONRISQUE_VRIS 
        add constraint FK_qjf1w1gilwjsssyw4i2uau7a1 
        foreign key (FK_VER_VRIS) 
        references instruction.VERSIONINSTRUCTION_VER

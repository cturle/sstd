
    create table acceptation.ADRESSERISQUECONTRAT_ADRC (
        ADRC_ID int identity not null,
        ADRC_ADRESSETYPE varchar(255),
        primary key (PK_ADRC)
    )

    create table acceptation.ASSIETTEACCEPTATION_ASSI (
        ASSI_ID int identity not null,
        ASSI_CODE varchar(255),
        ASSI_LIBELLE varchar(255),
        ASSI_VALEUR double precision,
        primary key (ASSI_ID)
    )

    create table acceptation.ASSUREACCEPTATION_ASSU (
        ASSU_ID int identity not null,
        ASSU_CODEGROUPEMENT varchar(255),
        ASSU_NUMSOC varchar(255),
        ASSU_TYPEASSOCIATION varchar(255),
        ASSU_PER int not null,
        primary key (ASSU_ID)
    )

    create table acceptation.CARACTERISTIQUERISQUEACCEPTATION_CRIS (
        CRIS_ID int identity not null,
        CRIS_CODECARACTERISTIQUE varchar(255),
        CRIS_MESSAGE_VALIDATION varchar(255),
        CRIS_MULTIVALEURSTR varchar(255),
        CRIS_VALEURBOOL bit,
        CRIS_VALEURDATE datetime,
        CRIS_VALEURNUM int,
        CRIS_VALEURSTR varchar(255),
        RIS_CRIS int,
        ADRC_CRIS int,
        primary key (CRIS_ID)
    )

    create table acceptation.CONTRAT_CON (
        CON_ID int identity not null,
        CON_CODE_BRANCHE varchar(255),
        CON_CODE_DOSSIER varchar(255),
        CON_CODE_FRACTION varchar(255),
        CON_CODE_INDICE varchar(255),
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
        CON_LIBELLE_INDICE varchar(255),
        CON_LIB_NIVEAU_FRANCHISE varchar(255),
        CON_LIBELLE_PROPO varchar(255),
        CON_LIBELLE_VERSION varchar(255),
        CON_MODIFIEUR varchar(255),
        CON_MODULATION numeric(19,2),
        CON_NUMERO varchar(255),
        CON_NUMERO_ACCESSORY varchar(255),
        CON_PRELEVEMENT bit,
        CON_PERIODICITE_INDICE varchar(255),
        CON_PREAVIS_RESIL_ASSURE int,
        CON_PREAVIS_RESIL_ASSUREUR int,
        CON_REVISABLE bit,
        CON_VALEUR_INDICE numeric(19,2),
        CON_PER int not null,
        CON_ASS int not null,
        CON_COV int,
        CON_MCO int,
        CON_PROT int,
        CON_REF int,
        primary key (CON_ID)
    )

    create table acceptation.CONTRIBUTION_CTR (
        CTR_ID int identity not null,
        CTR_CODE varchar(255),
        CTR_LIBELLE varchar(255),
        CTR_MCO int,
        CON_CTR int,
        primary key (CTR_ID)
    )

    create table acceptation.DISPOSITIONPARTICULIERE_DIS (
        DIS_ID int identity not null,
        DIS_CODE varchar(255),
        DIS_CODEOBJETREFERENT varchar(255),
        DIS_LIBELLEOBJETREFERENT varchar(255),
        DIS_TEXTE TEXT,
        DIS_TITRE varchar(255),
        DIS_TYPE varchar(255),
        CON_DIS int,
        primary key (DIS_ID)
    )

    create table acceptation.DOCUMENT_DOC (
        DOC_ID int identity not null,
        DOC_CODEDOC varchar(255),
        DOC_DTENVOI datetime,
        DOC_GED bit,
        DOC_LIBELLEDOC varchar(255),
        DOC_TYPE int,
        CON_DOC int,
        primary key (DOC_ID)
    )

    create table acceptation.GARANTIEACCEPTATION_GAR (
        GAR_ID int identity not null,
        GAR_CARACTERE int,
        GAR_CODE varchar(255),
        GAR_CODEGROUPEGAR varchar(255),
        GAR_DTDEBUTEFFET datetime,
        GAR_DTFINEFFET datetime,
        GAR_LIBELLE varchar(255),
        GAR_LIBELLEGROUPEGAR varchar(255),
        GAR_MTFRANCHISE numeric(19,2),
        GAR_UNITE_FRANCHISE int,
        GAR_ASS int,
        GAR_MCO int,
        RIS_GAR int,
        primary key (GAR_ID)
    )

    create table acceptation.INTERLOCUTEUR_INT (
        INT_ID int identity not null,
        INT_ACTIVITE varchar(255),
        INT_CIVILITE varchar(255),
        INT_COURIEL varchar(255),
        INT_FONCTION varchar(255),
        INT_NOM varchar(255),
        INT_PRENOM varchar(255),
        INT_TEL varchar(255),
        INT_ADR int,
        PER_INT int,
        primary key (INT_ID)
    )

    create table acceptation.MONTANTSCONTRAT_MCO (
        MCO_ID int identity not null,
        MCO_MONTANTCOMMISSION numeric(19,2),
        MCO_MONTANTHORSTAXEBASEANNUELLE numeric(19,2),
        MCO_MONTANTTTCBASEANNUELLE numeric(19,2),
        MCO_TAUXBASEANNUELLE numeric(19,2),
        primary key (MCO_ID)
    )

    create table acceptation.PERSONNEACCEPTATION_PER (
        PER_ID int identity not null,
        PER_NUMPERS varchar(255),
        PER_PROFIL varchar(255),
        PER_QUALITE varchar(255),
        PER_RAISONSOCIALE varchar(255),
        PER_ADR int,
        PER_AGE int,
        PER_VEN int,
        primary key (PER_ID)
    )

    create table acceptation.RISQUEACCEPTATION_RIS (
        RIS_ID int identity not null,
        RIS_CODEFORMULE varchar(255),
        RIS_COMMISSION numeric(19,2),
        RIS_COMPLET bit,
        RIS_DTDEBUTEFFET datetime,
        RIS_DTFINEFFET datetime,
        RIS_DUREE int,
        RIS_LIBELLEFORMULE varchar(255),
        RIS_NUMRISQUE int,
        RIS_TYPERISQUE varchar(255),
        RIS_ADR int,
        RIS_MCO int,
        CON_RIS int,
        primary key (RIS_ID)
    )

    create table affaire.BENEFICIAIRE_BEN (
        BEN_ID int identity not null,
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
        BEN_ADRT int,
        BEN_PER int,
        primary key (BEN_ID)
    )

    create table affaire.DEMANDEUR_DEM (
        DEM_ID int identity not null,
        DEM_CATEGORIEJURIDIQUE varchar(255),
        DEM_CODECOURTIER varchar(255),
        DEM_DATERADIATION datetime,
        DEM_DEPARTEMENT varchar(255),
        DEM_MOTIFRADIATION varchar(255),
        DEM_NUMEROTELEPHONE varchar(255),
        DEM_PROFIL varchar(255),
        DEM_QUALITE varchar(255),
        DEM_ADR int,
        DEM_AGN int,
        DEM_PER int,
        primary key (DEM_ID)
    )

    create table affaire.DOSSIER_DOS (
        DOS_ID int identity not null,
        DOS_CODECIBLE varchar(255),
        DOS_CODE varchar(255),
        DOS_DTCREATION datetime,
        DOS_DTMODIFICATION datetime,
        DOS_ETAT int,
        DOS_MODIFIEUR varchar(255),
        DOS_BEN int,
        DOS_CONV int,
        DOS_DEM int,
        DOS_ENT int,
        DOS_REF int,
        primary key (DOS_ID)
    )

    create table affaire.ENTRANT_ENT (
        ENT_ID int identity not null,
        ENT_CANALAPPORT varchar(255),
        ENT_DTDEMANDE datetime,
        ENT_DTRECEPTION datetime,
        ENT_DESCRIPTION TEXT,
        ENT_REFERENCE varchar(255),
        primary key (ENT_ID)
    )

    create table affaire.INSTRUCTION_INS (
        INS_ID int identity not null,
        INS_CODE varchar(255),
        INS_CODEPROTOCOLE varchar(255),
        INS_DTCREATION datetime,
        INS_ETAT int,
        INS_ISDISPONIBLE bit,
        INS_LIB varchar(255),
        INS_LIBPRODUIT varchar(255),
        INS_CODECONTRAT varchar(255),
        INS_NUMEROSOCIETAIRE varchar(255),
        INS_REF int,
        DOS_INS int,
        primary key (INS_ID)
    )

    create table affaire.INTERLOCUTEUR_INT (
        INT_ID int identity not null,
        INT_ACTIVITE varchar(255),
        INT_CIVILITE varchar(255),
        INT_COURIEL varchar(255),
        INT_FONCTION varchar(255),
        INT_NOM varchar(255),
        INT_PRENOM varchar(255),
        INT_TEL varchar(255),
        INT_ADR int,
        DEM_INT int,
        BEN_INT int,
        primary key (INT_ID)
    )

    create table affaire.OFFRE_OFF (
        OFF_ID int identity not null,
        OFF_AUTEURMODIFICATION varchar(255),
        OFF_CODE varchar(255),
        OFF_COMMENTAIRE varchar(1023),
        OFF_DTCREATION datetime,
        OFF_DTENVOI datetime,
        OFF_DTMODIFICATION datetime,
        OFF_ETAT int,
        OFF_REFERENCEGED varchar(255),
        OFF_TEXTEPERSO TEXT,
        OFF_AGE int,
        OFF_VEN int,
        DOS_OFF int,
        primary key (OFF_ID)
    )

    create table affaire.PERSONNEDOSSIER_PER (
        PER_ID int identity not null,
        PER_NUMEROPERSONNE varchar(255),
        PER_RAISONSOCIALE varchar(255),
        primary key (PER_ID)
    )

    create table affaire.PMACCESSORYPERSONNE_PMAC (
        PMAC_ID int identity not null,
        PMAC_CODEGROUPEMENT varchar(255),
        PMAC_NUMEROSOC varchar(255),
        PMAC_QUALITE varchar(255),
        PER_PAMC int,
        primary key (PMAC_ID)
    )

    create table affaire.PROPOSITIONASSURANCE_PASS (
        PASS_ID int identity not null,
        PASS_CODE varchar(255),
        PASS_ETAT int,
        PASS_LIBEDITIQUE varchar(255),
        OFF_PASS int,
        primary key (PASS_ID)
    )

    create table affaire.VERSIONAFFAIRE_VAF (
        VOF_ID int identity not null,
        VOF_CODE varchar(255),
        VOF_LIBEDITIQUE varchar(255),
        PASS_VOFF int,
        primary key (VOF_ID)
    )

    create table commun.ADRESSEPERSONNE_ADRP (
        ADRP_ID int identity not null,
        ADRP_ADRESSE varchar(255),
        ADRP_CODEINSEE varchar(255),
        ADRP_CP varchar(255),
        ADRP_COMPLEMENTADR varchar(255),
        ADRP_LIBCOMMUNE varchar(255),
        ADRP_LIBVOIE varchar(255),
        ADRP_NUMVOIE varchar(255),
        ADRP_PAYS varchar(255),
        ADRP_VILLE varchar(255),
        primary key (ADRP_ID)
    )

    create table commun.ADRESSERISQUE_ADRR (
        ADRR_ID int identity not null,
        ADRR_ADRESSE varchar(255),
        ADRR_ADRESSETYPE varchar(255),
        ADRR_CODEPAYS varchar(255),
        ADRR_CP varchar(255),
        ADRR_COMPLEMENT varchar(255),
        ADRR_VILLE varchar(255),
        primary key (ADRR_ID)
    )

    create table commun.AGENCE_AGN (
        AGN_ID int identity not null,
        AGN_CODEAGENCE varchar(255),
        AGN_LIBELLEAGENCE varchar(255),
        primary key (AGN_ID)
    )

    create table commun.CONVENTION_COV (
        COV_ID int identity not null,
        COV_CODECONVENTION varchar(255),
        COV_DATECREATIONCONVENTION datetime,
        COV_DATEDEBUT datetime,
        COV_DATEFIN datetime,
        COV_IDAVENANT int,
        COV_IDCONVENTION int,
        COV_LIBELLE varchar(255),
        COV_NUMEROAVENANT int,
        COV_TER int,
        primary key (COV_ID)
    )

    create table commun.DEPARTEMENT_DEP (
        DEP_ID int identity not null,
        DEP_CODEDEPARTEMENT varchar(255),
        DEP_LIBELLEDEPARTEMENT varchar(255),
        DEP_TER int,
        primary key (DEP_ID)
    )

    create table commun.INFORMATIONPRODUIT_IPRO (
        IPRO_ID int identity not null,
        IPRO_CODECIBLE varchar(255),
        IPRO_CODEPRODUIT varchar(255),
        IPRO_LIBELLEPRODUIT varchar(255),
        IPRO_TAUXCOMMISSIONNEMENT numeric(19,2),
        IPRO_TAUXMAXIMUM numeric(19,2),
        IPRO_TAUXMINIMUM numeric(19,2),
        typeRemuneration int,
        COV_IPRO int,
        primary key (IPRO_ID)
    )

    create table commun.PROTOCOLE_PROT (
        PROT_ID int identity not null,
        PROT_CODEPROTOCOLE varchar(255),
        PROT_CODECIBLE varchar(255),
        PROT_CODEPRODUIT varchar(255),
        PROT_LIBELLE varchar(255),
        PROT_TAUXCOMMISSIONNEMENT numeric(19,2),
        PROT_TAUXMAXIMUM numeric(19,2),
        PROT_TAUXMINIMUM numeric(19,2),
        typeRemuneration int,
        primary key (PROT_ID)
    )

    create table commun.REFERENT_REF (
        REF_ID int identity not null,
        REF_COURIEL varchar(255),
        REF_COURRIEL_GRP_PARENT varchar(255),
        REF_ID_GRP_ACTIF varchar(255),
        REF_ID_UTILISATEUR varchar(255),
        REF_LIB_GRP_PARENT varchar(255),
        REF_LOGIN varchar(255),
        REF_NOM varchar(255),
        REF_TELEPHONE varchar(255),
        REF_PRENOM varchar(255),
        REF_TELEPHONE_GRP_PARENT varchar(255),
        primary key (REF_ID)
    )

    create table commun.TERRITOIRE_INTERVENTION_TER (
        TER_ID int identity not null,
        TER_CODE varchar(255),
        TER_NOM varchar(255),
        primary key (TER_ID)
    )

    create table commun.VENDEUR_VEN (
        VEN_ID int identity not null,
        VEN_CIVILITE varchar(255),
        VEN_CODEVENDEUR varchar(255),
        VEN_NOMVENDEUR varchar(255),
        VEN_PRENOM varchar(255),
        VEN_ADRT int,
        DEM_VEN int,
        primary key (VEN_ID)
    )

    create table instruction.ASSIETTEGARANTIERISQUE_ASGR (
        ASGR_Id int identity not null,
        ASGR_CODE varchar(255),
        ASGR_LIBELLEE varchar(255),
        ASGR_MODIFIABLE bit,
        ASGR_VALEUR double precision,
        primary key (ASGR_Id)
    )

    create table instruction.ASSUREVERSION_ASS (
        ASS_ID int identity not null,
        ASS_CODEGROUPEMENT varchar(255),
        ASS_NUMPERS varchar(255),
        ASS_NUMSOC varchar(255),
        ASS_PROFIL varchar(255),
        ASS_QUALITE varchar(255),
        ASS_RAISONSOCIALE varchar(255),
        ASS_TYPEASSOCIATION varchar(255),
        primary key (ASS_ID)
    )

    create table instruction.BENEFICIAIREPROPO_BEN (
        BEN_ID int identity not null,
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
        BEN_ADRT int,
        primary key (BEN_ID)
    )

    create table instruction.CARACTERISTIQUERISQUEOBJET_CAR (
        CAR_ID int identity not null,
        CAR_CODE varchar(255),
        CAR_MULTIVALEURSTR varchar(255),
        CAR_VALEURBOOL bit,
        CAR_VALEURDATE datetime,
        CAR_VALEURNUM int,
        CAR_VALEURSTR varchar(255),
        RISO_CAR int,
        primary key (CAR_ID)
    )

    create table instruction.CONTEXTE_CON (
        CON_ID int identity not null,
        CON_CODE_MOTIF varchar(255),
        CON_COMMENTAIRE TEXT,
        CON_DATE_CONTEXTE datetime,
        CON_LIBELLE_MOTIF varchar(255),
        CON_TYPE_CONTEXTE int,
        PRO_CON int,
        primary key (CON_ID)
    )

    create table instruction.CONTRIBUTION_CONT (
        CONT_ID int identity not null,
        CONT_CODE varchar(255),
        CONT_LIB varchar(255),
        COU_CON int,
        primary key (CONT_ID)
    )

    create table instruction.COUVERTURE_COU (
        COU_ID int identity not null,
        COU_CODE varchar(255),
        COU_LIB varchar(255),
        COU_MODULATION numeric(19,2),
        PRO_COU int,
        primary key (COU_ID)
    )

    create table instruction.DEMANDEURVERSION_DEM (
        DEM_ID int identity not null,
        DEM_NUMPERS varchar(255),
        DEM_PROFIL varchar(255),
        DEM_QUALITE varchar(255),
        DEM_RAISONSOCIALE varchar(255),
        DEM_AGE int,
        primary key (DEM_ID)
    )

    create table instruction.DISPOSITIONPARTICULIERE_DIS (
        DIS_ID int identity not null,
        DIS_CODE varchar(255),
        DIS_CODEOBJETREFERENT varchar(255),
        DIS_LIBELLEOBJETREFERENT varchar(255),
        DIS_TEXTE TEXT,
        DIS_TITRE varchar(255),
        DIS_TYPE varchar(255),
        PRO_DIS int,
        primary key (DIS_ID)
    )

    create table instruction.GARANTIERISQUE_GRIS (
        GRIS_ID int identity not null,
        GRIS_CARACTERISTIQUE int,
        GRIS_CODE varchar(255),
        GRIS_DTDEBUTEFFET datetime,
        GRIS_DTFINEFFET datetime,
        GRIS_ASGR int,
        RIS_GAR int,
        primary key (GRIS_ID)
    )

    create table instruction.GROUPEGARANTIESINISTRALITE_GRO (
        GRO_ID int identity not null,
        GRO_CODE varchar(255),
        GRO_LIB varchar(255),
        SIN_GRO int,
        primary key (GRO_ID)
    )

    create table instruction.NIVEAUFRANCHISEGARANTIE_NFG (
        NFG_ID int identity not null,
        NFG_BASEANNUELLEHORSTAXE numeric(19,2),
        NFG_BASEANNUELLETTC numeric(19,2),
        NFG_CODENIVEAUFRANCHISE varchar(255),
        NFG_MONTANTFRANCHISE numeric(19,2),
        NFG_PRORATAHORSTAXE numeric(19,2),
        NFG_PRORATATTC numeric(19,2),
        NFG_TAUXBASEANNUELLE numeric(19,2),
        NFG_TAUXPRORATA numeric(19,2),
        NFG_UNITE_FRANCHISE int,
        GRIS_NFG int,
        primary key (NFG_ID)
    )

    create table instruction.PERIODEOBSERVATIONSINISTRALITE_PER (
        PER_ID int identity not null,
        PER_ANNEEPERIODE int,
        PER_DTDEBUTPERIODE datetime,
        PER_DATEFINPERIODE datetime,
        PER_MONTANTSINISTRES numeric(19,2),
        PER_NOMBRESINISTRES int,
        SIN_PER int,
        primary key (PER_ID)
    )

    create table instruction.PROPOSITIONSTANDARD_PRO (
        PRO_ID int identity not null,
        PRO_CODEDOSSIER varchar(255),
        PRO_CODE_INDICE varchar(255),
        PRO_CODE varchar(255),
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
        PRO_LIBELLE_INDICE varchar(255),
        PRO_MODIFIEUR varchar(255),
        PRO_NUMEOCYCLE int,
        PRO_NUMEROMAXVERSION int,
        PRO_SEQDP int,
        PRO_PERIODICITE_INDICE varchar(255),
        PRO_PREAVISRESILIATIONASSURE int,
        PRO_PREAVISRESILIATIONASSUREUR int,
        PRO_PRODUIT varchar(255),
        PRO_REDACTEUR varchar(255),
        PRO_REVISION bit,
        PRO_VALEUR_INDICE numeric(19,2),
        PRO_BEN int,
        PRO_COV int,
        PRO_PROT int,
        PRO_REF int,
        PRO_SIN int,
        primary key (PRO_ID)
    )

    create table instruction.RISQUEOBJET_RISO (
        RISO_ID int identity not null,
        RISO_CODE varchar(255),
        RISO_DTDEBUTEFFET datetime,
        RISO_DTFINEFFET datetime,
        RISO_DUREE varchar(255),
        RISO_NUMERORISQUE int,
        RISO_ADR int,
        PRO_RISO int,
        primary key (RISO_ID)
    )

    create table instruction.RISQUE_RIS (
        RIS_ID int identity not null,
        RIS_CODEFORMULE varchar(255),
        RIS_FRAISGESTION numeric(19,2),
        RIS_RISO int,
        COU_RIS int,
        primary key (RIS_ID)
    )

    create table instruction.SINISTRALITEPARGROUPEGARANTIE_SIG (
        SIG_ID int identity not null,
        SIG_MONTANTSINISTRES numeric(19,2),
        SIG_NOMBRESINISTRES int,
        SIG_GRO int,
        PER_SIG int,
        primary key (SIG_ID)
    )

    create table instruction.SINISTRALITE_SIN (
        SIN_ID int identity not null,
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
        primary key (SIN_ID)
    )

    create table instruction.TARIFCONTRIBUTIONPARNIVEAUFRANCHISE_TCN (
        TCN_ID int identity not null,
        TCN_BASEANNUELLEHORSTAXES numeric(19,2),
        TCN_BASEANNUELLETTC numeric(19,2),
        TCN_CODENIVEAUFRANCHISE varchar(255),
        TCN_LIBELLELONGNIVEAUFRANCHISE varchar(255),
        TCN_LIBELLENIVEAUFRANCHISE varchar(255),
        TCN_PRORATAHORSTAXES numeric(19,2),
        TCN_PRORATATTC numeric(19,2),
        TCN_TAUXBASEANNUELLE numeric(19,2),
        TCN_TAUXPRORATA numeric(19,2),
        CON_TCN int,
        primary key (TCN_ID)
    )

    create table instruction.TARIFCOUVERTUREPARNIVEAUFRANCHISE_TCON (
        TCON_ID int identity not null,
        TCON_CODENIVEAUFRANCHISE varchar(255),
        TCON_MONTANTCOMMISSION numeric(19,2),
        TCON_TOTALBASEANNUELLEHORSTAXEDESRISQUES numeric(19,2),
        TCON_TOTALBASE_ANNUELLETTCDESRISQUES numeric(19,2),
        TCON_TOTALPRORATAHORSTAXEDESRISQUES numeric(19,2),
        TCON_TOTALPRORATATTCDESRISQUES numeric(19,2),
        TCON_TOTALTAUXBASEANNUELLEDESRISQUES numeric(19,2),
        TCON_TOTALTAUXPRORATADESRISQUES numeric(19,2),
        COU_TRN int,
        primary key (TCON_ID)
    )

    create table instruction.TARIFRISQUEPARNIVEAUFRANCHISE_TRN (
        TRN_ID int identity not null,
        TRN_CODENIVEAUFRANCHISE varchar(255),
        TRN_Commission numeric(19,2),
        TRN_TOTALBASEANNUELLEHORSTAXEDESGARANTIES numeric(19,2),
        TRN_TOTALBASEANNUELLETTCDESGARANTIES numeric(19,2),
        TRN_TOTALPRORATAHORSTAXEDESGARANTIES numeric(19,2),
        TRN_TOTALPRORATATTCDESGARANTIES numeric(19,2),
        TRN_TOTALTauxBASEANNUELLEDESGARANTIES numeric(19,2),
        TRN_TOTALTAUXPRORATADESGARANTIES numeric(19,2),
        RIS_TRN int,
        primary key (TRN_ID)
    )

    create table instruction.VERSIONASSIETTEGARANTIE_VASS (
        VASS_ID int identity not null,
        VASS_CODE varchar(255),
        VASS_LIBELLE varchar(255),
        VASS_VALEUR double precision,
        primary key (VASS_ID)
    )

    create table instruction.VERSIONCARACTERISTIQUERISQUEOBJET_VCR (
        VCR_ID int identity not null,
        VCR_CODECARACTERISTIQUE varchar(255),
        VCR_MULTIVALEURSTR varchar(255),
        VCR_VALEURBOOL bit,
        VCR_VALEURDATE datetime,
        VCR_VALEURNUM int,
        VCR_VALEURSTR varchar(255),
        VRIS_VCR int,
        primary key (VCR_ID)
    )

    create table instruction.VERSIONCONTRIBUTION_VCO (
        VCO_ID int identity not null,
        VCO_BASEANNUELLEHORSTAXES numeric(19,2),
        VCO_BASEANNUELLETTC numeric(19,2),
        VCO_CODE varchar(255),
        VCO_LIB varchar(255),
        VCO_PRORATAHORSTAXES numeric(19,2),
        VCO_PRORATATTC numeric(19,2),
        VCO_TAUXBASEANNUELLE numeric(19,2),
        VCO_TAUXPRORATA numeric(19,2),
        VER_CON int,
        primary key (VCO_ID)
    )

    create table instruction.VERSIONDISPOSITIONPARTICULIERE_VDIS (
        VDIS_ID int identity not null,
        VDIS_CODE varchar(255),
        VDIS_CODEOBJETREFERENT varchar(255),
        VDIS_LIBELLEOBJETREFERENT varchar(255),
        VDIS_TEXTE TEXT,
        VDIS_TITRE varchar(255),
        VDIS_TYPE varchar(255),
        VER_VDIS int,
        primary key (VDIS_ID)
    )

    create table instruction.VERSIONGARANTIE_VGA (
        VGA_ID int identity not null,
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
        VGA_VASS int,
        VRIS_VGA int,
        primary key (VGA_ID)
    )

    create table instruction.VERSIONINSTRUCTION_VER (
        VER_ID int identity not null,
        VER_CODEBRANCHE varchar(255),
        VER_CODECOUVERTURE varchar(255),
        VER_CODEDOSSIER varchar(255),
        VER_CODEINDICE varchar(255),
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
        VER_LIBELLEINDICE varchar(255),
        VER_LIBELLELONGNIVEAUFRANCHISE varchar(255),
        VER_LIBELLEPROPOSISITON varchar(255),
        VER_LIB varchar(255),
        VER_MODULATION numeric(19,2),
        VER_MONTANTCOMMISSION numeric(19,2),
        VER_NUMEROCYCLE int,
        VER_PERIODICITEINDICE varchar(255),
        VER_PREAVISRESILIATIONASSURE int,
        VER_PREAVISRESILIATIONASSUREUR int,
        VER_REVISION bit,
        VER_TOTALBASEANNUELLEHORSTAXERISQUES numeric(19,2),
        VER_TOTALBASEANNUELLETTCRISQUES numeric(19,2),
        VER_TOTALPRORATAHORSTAXERISQUES numeric(19,2),
        VER_TOTALPRORATATTCRISQUES numeric(19,2),
        VER_TOTALTAUXBASEANNUELLERISQUES numeric(19,2),
        VER_TOTALTAUXPRORATARISQUES numeric(19,2),
        VER_VALEURINDICE numeric(19,2),
        VER_ASS int,
        VER_DEM int,
        VER_PROT int,
        VER_REF int not null,
        PRO_VER int,
        primary key (VER_ID)
    )

    create table instruction.VERSIONRISQUE_VRIS (
        VRIS_ID int identity not null,
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
        VRIS_ADR int,
        VER_VRIS int,
        primary key (VRIS_ID)
    )

    alter table acceptation.ASSUREACCEPTATION_ASSU 
        add constraint UK_ASSU_NUMSOC  unique (ASSU_NUMSOC)

    alter table acceptation.CONTRAT_CON 
        add constraint UK_CON_NUMERO  unique (CON_NUMERO)

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint UK_PER_NUMPERS  unique (PER_NUMPERS)

    alter table affaire.DOSSIER_DOS 
        add constraint UK_DOS_CODE  unique (DOS_CODE)

    alter table affaire.PERSONNEDOSSIER_PER 
        add constraint UK_PER_NUMEROPERSONNE  unique (PER_NUMEROPERSONNE)

    alter table commun.CONVENTION_COV 
        add constraint CONTRAINTE_UNIQUE_CONVENTION  unique (COV_CODECONVENTION, COV_NUMEROAVENANT, COV_LIBELLE)

    alter table commun.REFERENT_REF 
        add constraint UK_REF_LOGIN  unique (REF_LOGIN)

    alter table instruction.DEMANDEURVERSION_DEM 
        add constraint UK_DEM_NUMPERS  unique (DEM_NUMPERS)

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint UK_PRO_CODE  unique (PRO_CODE)

    alter table acceptation.ASSUREACCEPTATION_ASSU 
        add constraint FK_ASSUREACCEPTATION_ASS_PERSONNEACCEPTATION_PER 
        foreign key (ASSU_PER) 
        references acceptation.PERSONNEACCEPTATION_PER

    alter table acceptation.CARACTERISTIQUERISQUEACCEPTATION_CRIS 
        add constraint FK_ahlxo3v0ewdv0phfmfjxahqfo 
        foreign key (RIS_CRIS) 
        references acceptation.RISQUEACCEPTATION_RIS

    alter table acceptation.CARACTERISTIQUERISQUEACCEPTATION_CRIS 
        add constraint FK_1h9aasjq2c3cb9hiq1jcmlbo8 
        foreign key (ADRC_CRIS) 
        references acceptation.ADRESSERISQUECONTRAT_ADRC

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_PERSONNEACCEPTATION_PER 
        foreign key (CON_PER) 
        references acceptation.PERSONNEACCEPTATION_PER

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_ASSUREACCEPTATION_ASS 
        foreign key (CON_ASS) 
        references acceptation.ASSUREACCEPTATION_ASSU

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_CONVENTION_COV 
        foreign key (CON_COV) 
        references commun.CONVENTION_COV

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_MONTANTSCONTRAT_MCO 
        foreign key (CON_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_PROTOCOLE_PROT 
        foreign key (CON_PROT) 
        references commun.PROTOCOLE_PROT

    alter table acceptation.CONTRAT_CON 
        add constraint FK_CONTRAT_CON_REFERENT_REF 
        foreign key (CON_REF) 
        references commun.REFERENT_REF

    alter table acceptation.CONTRIBUTION_CTR 
        add constraint FK_CONTRIBUTION_CTR_MONTANTSCONTRAT_MCO 
        foreign key (CTR_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.CONTRIBUTION_CTR 
        add constraint FK_7j2fqlmmjirlr8w67c9d1wvta 
        foreign key (CON_CTR) 
        references acceptation.CONTRAT_CON

    alter table acceptation.DISPOSITIONPARTICULIERE_DIS 
        add constraint FK_pw5t593xdpycpib4byi9dior8 
        foreign key (CON_DIS) 
        references acceptation.CONTRAT_CON

    alter table acceptation.DOCUMENT_DOC 
        add constraint FK_45yidshqq8i45u9hr3c72qdgt 
        foreign key (CON_DOC) 
        references acceptation.CONTRAT_CON

    alter table acceptation.GARANTIEACCEPTATION_GAR 
        add constraint FK_GARANTIEACCEPTATION_GAR_ASSIETTEACCEPTATION_ASS 
        foreign key (GAR_ASS) 
        references acceptation.ASSIETTEACCEPTATION_ASSI

    alter table acceptation.GARANTIEACCEPTATION_GAR 
        add constraint FK_GARANTIEACCEPTATION_GAR_MONTANTSCONTRAT_MCO 
        foreign key (GAR_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.GARANTIEACCEPTATION_GAR 
        add constraint FK_abyn4oli7pb30xdp2sr2tqbkv 
        foreign key (RIS_GAR) 
        references acceptation.RISQUEACCEPTATION_RIS

    alter table acceptation.INTERLOCUTEUR_INT 
        add constraint FK_INTERLOCUTEUR_INT_ADRESSE_ADR 
        foreign key (INT_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table acceptation.INTERLOCUTEUR_INT 
        add constraint FK_q4a1cy9wjw6ct5hts3k4we4ac 
        foreign key (PER_INT) 
        references acceptation.PERSONNEACCEPTATION_PER

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint FK_PERSONNEACCEPTATION_PER_ADRESSE_ADR 
        foreign key (PER_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint FK_PERSONNEACCEPTATION_PER_AGENCE_AGN 
        foreign key (PER_AGE) 
        references commun.AGENCE_AGN

    alter table acceptation.PERSONNEACCEPTATION_PER 
        add constraint FK_PERSONNEACCEPTATION_PER_VENDEUR_VEN 
        foreign key (PER_VEN) 
        references commun.VENDEUR_VEN

    alter table acceptation.RISQUEACCEPTATION_RIS 
        add constraint FK_RISQUEACCEPTATION_RIS_ADRESSEACCEPTATION_ADR 
        foreign key (RIS_ADR) 
        references acceptation.ADRESSERISQUECONTRAT_ADRC

    alter table acceptation.RISQUEACCEPTATION_RIS 
        add constraint FK_RISQUEACCEPTATION_RIS_MONTANTSCONTRAT_MCO 
        foreign key (RIS_MCO) 
        references acceptation.MONTANTSCONTRAT_MCO

    alter table acceptation.RISQUEACCEPTATION_RIS 
        add constraint FK_9yi61ij2ckyy76j129idx2xvx 
        foreign key (CON_RIS) 
        references acceptation.CONTRAT_CON

    alter table affaire.BENEFICIAIRE_BEN 
        add constraint FK_BENEFICIAIRE_BEN_ADRESSE_ADRT 
        foreign key (BEN_ADRT) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table affaire.BENEFICIAIRE_BEN 
        add constraint FK_BENEFICIAIRE_BEN_PERSONNEDOSSIER_PER 
        foreign key (BEN_PER) 
        references affaire.PERSONNEDOSSIER_PER

    alter table affaire.DEMANDEUR_DEM 
        add constraint FK_DEMANDEUR_DEM_ADRESSE_ADRT 
        foreign key (DEM_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table affaire.DEMANDEUR_DEM 
        add constraint FK_DEMANDEUR_DEM_AGENCE_AGN 
        foreign key (DEM_AGN) 
        references commun.AGENCE_AGN

    alter table affaire.DEMANDEUR_DEM 
        add constraint FK_DEMANDEUR_DEM_PERSONNEDOSSIER_PER 
        foreign key (DEM_PER) 
        references affaire.PERSONNEDOSSIER_PER

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_BENEFICIAIRE_BEN 
        foreign key (DOS_BEN) 
        references affaire.BENEFICIAIRE_BEN

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_CONVENTION_COV 
        foreign key (DOS_CONV) 
        references commun.CONVENTION_COV

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_DEMANDEUR_DEM 
        foreign key (DOS_DEM) 
        references affaire.DEMANDEUR_DEM

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_ENTRANT_ENT 
        foreign key (DOS_ENT) 
        references affaire.ENTRANT_ENT

    alter table affaire.DOSSIER_DOS 
        add constraint FK_DOSSIER_DOS_REFERENT_REF 
        foreign key (DOS_REF) 
        references commun.REFERENT_REF

    alter table affaire.INSTRUCTION_INS 
        add constraint FK_INSTRUCTION_INS_REFERENT_REF 
        foreign key (INS_REF) 
        references commun.REFERENT_REF

    alter table affaire.INSTRUCTION_INS 
        add constraint FK_ibbwcljgmmn5h97jmgs1taw13 
        foreign key (DOS_INS) 
        references affaire.DOSSIER_DOS

    alter table affaire.INTERLOCUTEUR_INT 
        add constraint FK_INTERLOCUTEUR_INT_ADRESSE_ADRT 
        foreign key (INT_ADR) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table affaire.INTERLOCUTEUR_INT 
        add constraint FK_ohvvgupj716jyf10jg68r9kpf 
        foreign key (DEM_INT) 
        references affaire.DEMANDEUR_DEM

    alter table affaire.INTERLOCUTEUR_INT 
        add constraint FK_ohgkg263tjn1toei2yfddvwuv 
        foreign key (BEN_INT) 
        references affaire.BENEFICIAIRE_BEN

    alter table affaire.OFFRE_OFF 
        add constraint FK_OFFRE_OFF_AGENCE_AGN 
        foreign key (OFF_AGE) 
        references commun.AGENCE_AGN

    alter table affaire.OFFRE_OFF 
        add constraint FK_OFFRE_OFF_VENDEUR_VEN 
        foreign key (OFF_VEN) 
        references commun.VENDEUR_VEN

    alter table affaire.OFFRE_OFF 
        add constraint FK_1l94llcmyotibrbyaxlhimmdp 
        foreign key (DOS_OFF) 
        references affaire.DOSSIER_DOS

    alter table affaire.PMACCESSORYPERSONNE_PMAC 
        add constraint FK_cjmjdgu0nwjgheq8brdjw4ofe 
        foreign key (PER_PAMC) 
        references affaire.PERSONNEDOSSIER_PER

    alter table affaire.PROPOSITIONASSURANCE_PASS 
        add constraint FK_kaseolmi1c3jjkpr5vpcdhnlo 
        foreign key (OFF_PASS) 
        references affaire.OFFRE_OFF

    alter table affaire.VERSIONAFFAIRE_VAF 
        add constraint FK_smi1atyubbpk588cdqvb58q2r 
        foreign key (PASS_VOFF) 
        references affaire.PROPOSITIONASSURANCE_PASS

    alter table commun.CONVENTION_COV 
        add constraint FK_CONVENTION_COV_TERRITOIRE_INTERVENTION_TER 
        foreign key (COV_TER) 
        references commun.TERRITOIRE_INTERVENTION_TER

    alter table commun.DEPARTEMENT_DEP 
        add constraint FK_903gfkwwxeil66micjxior2lx 
        foreign key (DEP_TER) 
        references commun.TERRITOIRE_INTERVENTION_TER

    alter table commun.INFORMATIONPRODUIT_IPRO 
        add constraint FK_r5hnwro4xnv0fyp6071wxa1pp 
        foreign key (COV_IPRO) 
        references commun.CONVENTION_COV

    alter table commun.VENDEUR_VEN 
        add constraint FK_VENDEUR_VEN_ADRESSE_ADRT 
        foreign key (VEN_ADRT) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table commun.VENDEUR_VEN 
        add constraint FK_2hlrrtvu8rwyf3r5kj0x5900p 
        foreign key (DEM_VEN) 
        references affaire.DEMANDEUR_DEM

    alter table instruction.BENEFICIAIREPROPO_BEN 
        add constraint FK_BENEFICIAIREPROPO_BEN_ADRESSE_ADRT 
        foreign key (BEN_ADRT) 
        references commun.ADRESSEPERSONNE_ADRP

    alter table instruction.CARACTERISTIQUERISQUEOBJET_CAR 
        add constraint FK_l9vwuk5usyauietkciffw83p 
        foreign key (RISO_CAR) 
        references instruction.RISQUEOBJET_RISO

    alter table instruction.CONTEXTE_CON 
        add constraint FK_115e9vlido1mqx2j0vqifycar 
        foreign key (PRO_CON) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.CONTRIBUTION_CONT 
        add constraint FK_sk39jc3kb8aeedugbfoly9m2j 
        foreign key (COU_CON) 
        references instruction.COUVERTURE_COU

    alter table instruction.COUVERTURE_COU 
        add constraint FK_rs70glpxgp728kpbu21pq94qj 
        foreign key (PRO_COU) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.DEMANDEURVERSION_DEM 
        add constraint FK_DEMANDEURVERSION_DEM_AGENCE_AGN 
        foreign key (DEM_AGE) 
        references commun.AGENCE_AGN

    alter table instruction.DISPOSITIONPARTICULIERE_DIS 
        add constraint FK_iy5chl700a6afok4vo3vcq27e 
        foreign key (PRO_DIS) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.GARANTIERISQUE_GRIS 
        add constraint FK_GARANTIERISQUE_GRIS_ASSIETTEGARANTIERISQUE_ASGR 
        foreign key (GRIS_ASGR) 
        references instruction.ASSIETTEGARANTIERISQUE_ASGR

    alter table instruction.GARANTIERISQUE_GRIS 
        add constraint FK_841mw9ds665bykonso7hgjjti 
        foreign key (RIS_GAR) 
        references instruction.RISQUE_RIS

    alter table instruction.GROUPEGARANTIESINISTRALITE_GRO 
        add constraint FK_cfk18novn8poivmtcvn0jx26a 
        foreign key (SIN_GRO) 
        references instruction.SINISTRALITE_SIN

    alter table instruction.NIVEAUFRANCHISEGARANTIE_NFG 
        add constraint FK_96nlt2khjayedqfbdsol5hbip 
        foreign key (GRIS_NFG) 
        references instruction.GARANTIERISQUE_GRIS

    alter table instruction.PERIODEOBSERVATIONSINISTRALITE_PER 
        add constraint FK_43itnhomnigh6ldjc3ypxctwc 
        foreign key (SIN_PER) 
        references instruction.SINISTRALITE_SIN

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_BENEFICIAIREPROPO_BEN 
        foreign key (PRO_BEN) 
        references instruction.BENEFICIAIREPROPO_BEN

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_CONVENTION_COV 
        foreign key (PRO_COV) 
        references commun.CONVENTION_COV

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_PROTOCOLE_PROT 
        foreign key (PRO_PROT) 
        references commun.PROTOCOLE_PROT

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_REFERENT_REF 
        foreign key (PRO_REF) 
        references commun.REFERENT_REF

    alter table instruction.PROPOSITIONSTANDARD_PRO 
        add constraint FK_PROPOSITIONSTANDARD_PRO_SINISTRALITE_SIN 
        foreign key (PRO_SIN) 
        references instruction.SINISTRALITE_SIN

    alter table instruction.RISQUEOBJET_RISO 
        add constraint FK_RISQUEOBJET_RISO_ADRESSE_ADR 
        foreign key (RISO_ADR) 
        references commun.ADRESSERISQUE_ADRR

    alter table instruction.RISQUEOBJET_RISO 
        add constraint FK_t9w1h76pj9v3i72fyn1dik4vk 
        foreign key (PRO_RISO) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.RISQUE_RIS 
        add constraint FK_RISQUE_RIS_RISQUEOBJET_RISO 
        foreign key (RIS_RISO) 
        references instruction.RISQUEOBJET_RISO

    alter table instruction.RISQUE_RIS 
        add constraint FK_abfkvtty1j7fhwpx3lsyv032s 
        foreign key (COU_RIS) 
        references instruction.COUVERTURE_COU

    alter table instruction.SINISTRALITEPARGROUPEGARANTIE_SIG 
        add constraint FK_SINISTRALITEPARGROUPEGARANTIE_SIG_GROUPEGARANTIESINISTRALITE_GRO 
        foreign key (SIG_GRO) 
        references instruction.GROUPEGARANTIESINISTRALITE_GRO

    alter table instruction.SINISTRALITEPARGROUPEGARANTIE_SIG 
        add constraint FK_r46im4douji6huoa16m7fhl1g 
        foreign key (PER_SIG) 
        references instruction.PERIODEOBSERVATIONSINISTRALITE_PER

    alter table instruction.TARIFCONTRIBUTIONPARNIVEAUFRANCHISE_TCN 
        add constraint FK_pdtboi9jecrvf3p7grhwpwis8 
        foreign key (CON_TCN) 
        references instruction.CONTRIBUTION_CONT

    alter table instruction.TARIFCOUVERTUREPARNIVEAUFRANCHISE_TCON 
        add constraint FK_3hyghmebf2j2492v3e96x7r6q 
        foreign key (COU_TRN) 
        references instruction.COUVERTURE_COU

    alter table instruction.TARIFRISQUEPARNIVEAUFRANCHISE_TRN 
        add constraint FK_cxe1fum5oedty28603ewn5db3 
        foreign key (RIS_TRN) 
        references instruction.RISQUE_RIS

    alter table instruction.VERSIONCARACTERISTIQUERISQUEOBJET_VCR 
        add constraint FK_twnbcobwo2sxre9b74lg61wh 
        foreign key (VRIS_VCR) 
        references instruction.VERSIONRISQUE_VRIS

    alter table instruction.VERSIONCONTRIBUTION_VCO 
        add constraint FK_j70eljrtr6t78i1e5kw1lfo0 
        foreign key (VER_CON) 
        references instruction.VERSIONINSTRUCTION_VER

    alter table instruction.VERSIONDISPOSITIONPARTICULIERE_VDIS 
        add constraint FK_epk41ihb8hb12l5xtjemwfvff 
        foreign key (VER_VDIS) 
        references instruction.VERSIONINSTRUCTION_VER

    alter table instruction.VERSIONGARANTIE_VGA 
        add constraint FK_VERSIONGARANTIE_VGA_VERSIONASSIETTEGARANTIE_VASS 
        foreign key (VGA_VASS) 
        references instruction.VERSIONASSIETTEGARANTIE_VASS

    alter table instruction.VERSIONGARANTIE_VGA 
        add constraint FK_hpjua87i09ywm9ndxa0l8q16k 
        foreign key (VRIS_VGA) 
        references instruction.VERSIONRISQUE_VRIS

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_ASSUREVERSION_ASS 
        foreign key (VER_ASS) 
        references instruction.ASSUREVERSION_ASS

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_DEMANDEURVERSION_DEM 
        foreign key (VER_DEM) 
        references instruction.DEMANDEURVERSION_DEM

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_PROTOCOLE_PROT 
        foreign key (VER_PROT) 
        references commun.PROTOCOLE_PROT

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_VERSIONINSTRUCTION_VER_REFERENT_REF 
        foreign key (VER_REF) 
        references commun.REFERENT_REF

    alter table instruction.VERSIONINSTRUCTION_VER 
        add constraint FK_aghqyor6dh7wsplmu1f2jmdeg 
        foreign key (PRO_VER) 
        references instruction.PROPOSITIONSTANDARD_PRO

    alter table instruction.VERSIONRISQUE_VRIS 
        add constraint FK_VERSIONRISQUE_VRIS_ADRESSE_ADR 
        foreign key (VRIS_ADR) 
        references commun.ADRESSERISQUE_ADRR

    alter table instruction.VERSIONRISQUE_VRIS 
        add constraint FK_dtnsbh8q43vjroay718ynpx8v 
        foreign key (VER_VRIS) 
        references instruction.VERSIONINSTRUCTION_VER

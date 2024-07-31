.class public final enum Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;
.super Ljava/lang/Enum;
.source "PickableMusicalInstrument.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;",
        ">;",
        "Lorg/catrobat/catroid/common/Nameable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum BASS:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum BASSOON:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum CELLO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum CHOIR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum CLARINET:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum ELECTRIC_GUITAR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum ELECTRIC_PIANO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum FLUTE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum GUITAR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum MARIMBA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum MUSIC_BOX:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum ORGAN:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum PIANO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum PIZZICATO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum SAXOPHONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum STEEL_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum SYNTH_LEAD:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum SYNTH_PAD:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum TROMBONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum VIBRAPHONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

.field public static final enum WOODEN_FLUTE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;


# instance fields
.field private name:Ljava/lang/String;

.field private nameStringId:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "PIANO"

    const/4 v2, 0x0

    const v3, 0x7f120638

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->PIANO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "ELECTRIC_PIANO"

    const/4 v3, 0x1

    const v4, 0x7f1202cc

    const/4 v5, 0x2

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->ELECTRIC_PIANO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 36
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "CELLO"

    const v4, 0x7f1201e8

    const/16 v6, 0x2a

    invoke-direct {v0, v1, v5, v4, v6}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->CELLO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "FLUTE"

    const/4 v4, 0x3

    const v6, 0x7f120348

    const/16 v7, 0x49

    invoke-direct {v0, v1, v4, v6, v7}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->FLUTE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 38
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "VIBRAPHONE"

    const/4 v6, 0x4

    const v7, 0x7f1207cd

    const/16 v8, 0xb

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->VIBRAPHONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 39
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "ORGAN"

    const/4 v7, 0x5

    const v9, 0x7f120604

    const/16 v10, 0x10

    invoke-direct {v0, v1, v7, v9, v10}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->ORGAN:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "GUITAR"

    const/4 v9, 0x6

    const v11, 0x7f1204c8

    const/16 v12, 0x18

    invoke-direct {v0, v1, v9, v11, v12}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->GUITAR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 41
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "ELECTRIC_GUITAR"

    const/4 v11, 0x7

    const v12, 0x7f1202cb

    const/16 v13, 0x1a

    invoke-direct {v0, v1, v11, v12, v13}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->ELECTRIC_GUITAR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 42
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "BASS"

    const/16 v12, 0x8

    const v13, 0x7f120057

    const/16 v14, 0x20

    invoke-direct {v0, v1, v12, v13, v14}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->BASS:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 43
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "PIZZICATO"

    const/16 v13, 0x9

    const v14, 0x7f12063a

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->PIZZICATO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "SYNTH_PAD"

    const/16 v14, 0xa

    const v15, 0x7f12077b

    const/16 v13, 0x5a

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->SYNTH_PAD:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 45
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "CHOIR"

    const v13, 0x7f1201ef

    const/16 v15, 0x34

    invoke-direct {v0, v1, v8, v13, v15}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->CHOIR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 46
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "SYNTH_LEAD"

    const/16 v13, 0xc

    const v15, 0x7f12077a

    const/16 v8, 0x50

    invoke-direct {v0, v1, v13, v15, v8}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->SYNTH_LEAD:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 47
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "WOODEN_FLUTE"

    const/16 v8, 0xd

    const v15, 0x7f1207da

    const/16 v12, 0x4b

    invoke-direct {v0, v1, v8, v15, v12}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->WOODEN_FLUTE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "TROMBONE"

    const/16 v12, 0xe

    const v15, 0x7f1207a1

    const/16 v8, 0x39

    invoke-direct {v0, v1, v12, v15, v8}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->TROMBONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "SAXOPHONE"

    const/16 v8, 0xf

    const v15, 0x7f120718

    const/16 v12, 0x40

    invoke-direct {v0, v1, v8, v15, v12}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->SAXOPHONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 50
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "BASSOON"

    const v12, 0x7f120059

    const/16 v15, 0x46

    invoke-direct {v0, v1, v10, v12, v15}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->BASSOON:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "CLARINET"

    const/16 v12, 0x11

    const v15, 0x7f1201f2

    const/16 v10, 0x47

    invoke-direct {v0, v1, v12, v15, v10}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->CLARINET:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 52
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "MUSIC_BOX"

    const/16 v10, 0x12

    const v15, 0x7f12059e

    invoke-direct {v0, v1, v10, v15, v14}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->MUSIC_BOX:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "STEEL_DRUM"

    const/16 v15, 0x13

    const v10, 0x7f120776

    const/16 v12, 0x72

    invoke-direct {v0, v1, v15, v10, v12}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->STEEL_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 54
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const-string v1, "MARIMBA"

    const/16 v10, 0x14

    const v12, 0x7f12054a

    invoke-direct {v0, v1, v10, v12, v13}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->MARIMBA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 33
    const/16 v1, 0x15

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    sget-object v12, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->PIANO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v12, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->ELECTRIC_PIANO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->CELLO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->FLUTE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->VIBRAPHONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->ORGAN:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->GUITAR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->ELECTRIC_GUITAR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->BASS:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->PIZZICATO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->SYNTH_PAD:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v14

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->CHOIR:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->SYNTH_LEAD:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v13

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->WOODEN_FLUTE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->TROMBONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->SAXOPHONE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->BASSOON:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->CLARINET:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->MUSIC_BOX:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->STEEL_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    aput-object v2, v1, v15

    aput-object v0, v1, v10

    sput-object v1, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->$VALUES:[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "nameStringId"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->nameStringId:I

    .line 62
    iput p4, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->value:I

    .line 63
    return-void
.end method

.method public static getIndexByValue(I)I
    .locals 6
    .param p0, "value"    # I

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "index":I
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 68
    .local v4, "instrument":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 69
    return v0

    .line 71
    :cond_0
    nop

    .end local v4    # "instrument":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;
    add-int/lit8 v0, v0, 0x1

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;
    .locals 1

    .line 33
    sget-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->$VALUES:[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->nameStringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->value:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 91
    iput p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->value:I

    .line 92
    return-void
.end method

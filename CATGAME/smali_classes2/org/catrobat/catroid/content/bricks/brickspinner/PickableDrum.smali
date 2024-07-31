.class public final enum Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;
.super Ljava/lang/Enum;
.source "PickableDrum.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;",
        ">;",
        "Lorg/catrobat/catroid/common/Nameable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum BASS_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum BONGO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum CABASA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum CLAVES:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum CLOSED_HI_HAT:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum CONGA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum COWBELL:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum CRASH_CYMBAL:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum GUIRO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum HAND_CLAP:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum OPEN_CUICA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum OPEN_HI_HAT:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum SIDE_STICK:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum SNARE_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum TAMBOURINE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum TRIANGLE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum VIBRASLAP:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field public static final enum WOOD_BLOCK:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private name:Ljava/lang/String;

.field private nameStringId:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "SNARE_DRUM"

    const/4 v2, 0x0

    const v3, 0x7f12074b

    const/16 v4, 0x26

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->SNARE_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "BASS_DRUM"

    const/4 v3, 0x1

    const v4, 0x7f120058

    const/16 v5, 0x23

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->BASS_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 36
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "SIDE_STICK"

    const/4 v4, 0x2

    const v5, 0x7f12073e

    const/16 v6, 0x25

    invoke-direct {v0, v1, v4, v5, v6}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->SIDE_STICK:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "CRASH_CYMBAL"

    const/4 v5, 0x3

    const v6, 0x7f120229

    const/16 v7, 0x31

    invoke-direct {v0, v1, v5, v6, v7}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CRASH_CYMBAL:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 38
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "OPEN_HI_HAT"

    const/4 v6, 0x4

    const v7, 0x7f120603

    const/16 v8, 0x2e

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->OPEN_HI_HAT:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 39
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "CLOSED_HI_HAT"

    const/4 v7, 0x5

    const v8, 0x7f1201f6

    const/16 v9, 0x2a

    invoke-direct {v0, v1, v7, v8, v9}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CLOSED_HI_HAT:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "TAMBOURINE"

    const/4 v8, 0x6

    const v9, 0x7f12077c

    const/16 v10, 0x36

    invoke-direct {v0, v1, v8, v9, v10}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->TAMBOURINE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 41
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "HAND_CLAP"

    const/4 v9, 0x7

    const v10, 0x7f1204c9

    const/16 v11, 0x27

    invoke-direct {v0, v1, v9, v10, v11}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->HAND_CLAP:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 42
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "CLAVES"

    const/16 v10, 0x8

    const v11, 0x7f1201f3

    const/16 v12, 0x4b

    invoke-direct {v0, v1, v10, v11, v12}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CLAVES:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 43
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "WOOD_BLOCK"

    const/16 v11, 0x9

    const v12, 0x7f1207d9

    const/16 v13, 0x4c

    invoke-direct {v0, v1, v11, v12, v13}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->WOOD_BLOCK:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "COWBELL"

    const/16 v12, 0xa

    const v13, 0x7f120228

    const/16 v14, 0x38

    invoke-direct {v0, v1, v12, v13, v14}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->COWBELL:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 45
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "TRIANGLE"

    const/16 v13, 0xb

    const v14, 0x7f1207a0

    const/16 v15, 0x51

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->TRIANGLE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 46
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "BONGO"

    const/16 v14, 0xc

    const v15, 0x7f12005d

    const/16 v13, 0x3c

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->BONGO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 47
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "CONGA"

    const/16 v13, 0xd

    const v15, 0x7f12021f

    const/16 v14, 0x3f

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CONGA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "CABASA"

    const/16 v14, 0xe

    const v15, 0x7f1201b4

    const/16 v13, 0x45

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CABASA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "GUIRO"

    const/16 v13, 0xf

    const v15, 0x7f1204c7

    const/16 v14, 0x49

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->GUIRO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 50
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "VIBRASLAP"

    const/16 v14, 0x10

    const v15, 0x7f1207ce

    const/16 v13, 0x3a

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->VIBRASLAP:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const-string v1, "OPEN_CUICA"

    const/16 v13, 0x11

    const v15, 0x7f120602

    const/16 v14, 0x4f

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->OPEN_CUICA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 33
    const/16 v1, 0x12

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    sget-object v14, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->SNARE_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v14, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->BASS_DRUM:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->SIDE_STICK:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CRASH_CYMBAL:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->OPEN_HI_HAT:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CLOSED_HI_HAT:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->TAMBOURINE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->HAND_CLAP:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CLAVES:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->WOOD_BLOCK:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->COWBELL:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->TRIANGLE:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->BONGO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CONGA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->CABASA:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->GUIRO:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->VIBRASLAP:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v13

    sput-object v1, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->$VALUES:[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->nameStringId:I

    .line 61
    iput p4, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->value:I

    .line 62
    return-void
.end method

.method public static getIndexByValue(I)I
    .locals 6
    .param p0, "value"    # I

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "index":I
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 67
    .local v4, "drum":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    nop

    .end local v4    # "drum":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;
    add-int/lit8 v0, v0, 0x1

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;
    .locals 1

    .line 33
    sget-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->$VALUES:[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->nameStringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->value:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->name:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 90
    iput p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->value:I

    .line 91
    return-void
.end method

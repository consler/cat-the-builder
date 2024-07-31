.class public final enum Lorg/catrobat/catroid/pocketmusic/note/Octave;
.super Ljava/lang/Enum;
.source "Octave.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/pocketmusic/note/Octave;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final enum CONTRA_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final DEFAULT_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final enum FOUR_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final enum GREAT_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final NUMBER_OF_UNSIGNED_HALF_TONE_STEPS_PER_OCTAVE:I = 0x7

.field public static final enum ONE_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final enum SMALL_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final enum THREE_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

.field public static final enum TWO_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;


# instance fields
.field private noteNames:[Lorg/catrobat/catroid/pocketmusic/note/NoteName;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    const/16 v1, 0xc

    new-array v2, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C1:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C1S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D1:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D1S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->E1:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F1:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F1S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G1:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G1S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A1:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A1S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B1:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/16 v15, 0xb

    aput-object v3, v2, v15

    const-string v3, "CONTRA_OCTAVE"

    invoke-direct {v0, v3, v4, v2}, Lorg/catrobat/catroid/pocketmusic/note/Octave;-><init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->CONTRA_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    new-array v2, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C2:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v4

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C2S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v5

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D2:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v6

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D2S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v7

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->E2:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v8

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F2:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v9

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F2S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v10

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G2:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v11

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G2S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v12

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A2:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v13

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A2S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v14

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B2:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v15

    const-string v3, "GREAT_OCTAVE"

    invoke-direct {v0, v3, v5, v2}, Lorg/catrobat/catroid/pocketmusic/note/Octave;-><init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->GREAT_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 31
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    new-array v2, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v4

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C3S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v5

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v6

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D3S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v7

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->E3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v8

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v9

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F3S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v10

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v11

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G3S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v12

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v13

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A3S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v14

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v15

    const-string v3, "SMALL_OCTAVE"

    invoke-direct {v0, v3, v6, v2}, Lorg/catrobat/catroid/pocketmusic/note/Octave;-><init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->SMALL_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 33
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    new-array v2, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v4

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C4S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v5

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v6

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D4S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v7

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->E4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v8

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v9

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F4S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v10

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v11

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G4S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v12

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v13

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A4S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v14

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v15

    const-string v3, "ONE_LINE_OCTAVE"

    invoke-direct {v0, v3, v7, v2}, Lorg/catrobat/catroid/pocketmusic/note/Octave;-><init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->ONE_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    new-array v2, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C5:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v4

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C5S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v5

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D5:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v6

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D5S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v7

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->E5:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v8

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F5:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v9

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F5S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v10

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G5:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v11

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G5S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v12

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A5:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v13

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A5S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v14

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B5:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v15

    const-string v3, "TWO_LINE_OCTAVE"

    invoke-direct {v0, v3, v8, v2}, Lorg/catrobat/catroid/pocketmusic/note/Octave;-><init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->TWO_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    new-array v2, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C6:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v4

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C6S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v5

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D6:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v6

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D6S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v7

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->E6:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v8

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F6:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v9

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F6S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v10

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G6:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v11

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G6S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v12

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A6:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v13

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A6S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v14

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B6:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v3, v2, v15

    const-string v3, "THREE_LINE_OCTAVE"

    invoke-direct {v0, v3, v9, v2}, Lorg/catrobat/catroid/pocketmusic/note/Octave;-><init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->THREE_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 39
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    new-array v1, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C7:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->C7S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D7:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D7S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->E7:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F7:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->F7S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G7:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->G7S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A7:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v13

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->A7S:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v14

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B7:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    aput-object v2, v1, v15

    const-string v2, "FOUR_LINE_OCTAVE"

    invoke-direct {v0, v2, v10, v1}, Lorg/catrobat/catroid/pocketmusic/note/Octave;-><init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->FOUR_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 25
    new-array v1, v11, [Lorg/catrobat/catroid/pocketmusic/note/Octave;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/Octave;->CONTRA_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/Octave;->GREAT_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/Octave;->SMALL_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/Octave;->ONE_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    aput-object v2, v1, v7

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/Octave;->TWO_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    aput-object v3, v1, v8

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/Octave;->THREE_LINE_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    aput-object v3, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lorg/catrobat/catroid/pocketmusic/note/Octave;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/Octave;

    .line 42
    sput-object v2, Lorg/catrobat/catroid/pocketmusic/note/Octave;->DEFAULT_OCTAVE:Lorg/catrobat/catroid/pocketmusic/note/Octave;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lorg/catrobat/catroid/pocketmusic/note/NoteName;)V
    .locals 0
    .param p3, "noteNames"    # [Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/catrobat/catroid/pocketmusic/note/NoteName;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p3}, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->noteNames:[Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/Octave;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/pocketmusic/note/Octave;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/Octave;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/note/Octave;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/note/Octave;

    return-object v0
.end method


# virtual methods
.method public getNoteNames()[Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Octave;->noteNames:[Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    return-object v0
.end method

.method public next()Lorg/catrobat/catroid/pocketmusic/note/Octave;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Octave;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 58
    .local v0, "index":I
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/note/Octave;->values()[Lorg/catrobat/catroid/pocketmusic/note/Octave;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 62
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/note/Octave;->values()[Lorg/catrobat/catroid/pocketmusic/note/Octave;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public previous()Lorg/catrobat/catroid/pocketmusic/note/Octave;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Octave;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 68
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/note/Octave;->values()[Lorg/catrobat/catroid/pocketmusic/note/Octave;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.class public final enum Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
.super Ljava/lang/Enum;
.source "MusicalBeat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field public static final enum BEAT_16_16:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field public static final enum BEAT_3_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field public static final enum BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;


# instance fields
.field private final bottomNumber:I

.field private final noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field private final topNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 26
    new-instance v6, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    sget-object v5, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "BEAT_3_4"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;-><init>(Ljava/lang/String;IIILorg/catrobat/catroid/pocketmusic/note/NoteLength;)V

    sput-object v6, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_3_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    sget-object v12, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v8, "BEAT_4_4"

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;-><init>(Ljava/lang/String;IIILorg/catrobat/catroid/pocketmusic/note/NoteLength;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    sget-object v6, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SIXTEENTH:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v2, "BEAT_16_16"

    const/4 v3, 0x2

    const/16 v4, 0x10

    const/16 v5, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;-><init>(Ljava/lang/String;IIILorg/catrobat/catroid/pocketmusic/note/NoteLength;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_16_16:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 25
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_3_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILorg/catrobat/catroid/pocketmusic/note/NoteLength;)V
    .locals 0
    .param p3, "topNumnber"    # I
    .param p4, "bottomNumber"    # I
    .param p5, "noteLength"    # Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/catrobat/catroid/pocketmusic/note/NoteLength;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->topNumber:I

    .line 34
    iput p4, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->bottomNumber:I

    .line 35
    iput-object p5, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 36
    return-void
.end method

.method public static convertToMusicalBeat(II)Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .locals 5
    .param p0, "topNumber"    # I
    .param p1, "bottomNumber"    # I

    .line 51
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->values()[Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 52
    .local v3, "beat":Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v4

    if-ne v4, p0, :cond_0

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getBottomNumber()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 53
    return-object v3

    .line 51
    .end local v3    # "beat":Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    return-object v0
.end method


# virtual methods
.method public getBottomNumber()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->bottomNumber:I

    return v0
.end method

.method public getNoteLength()Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->noteLength:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    return-object v0
.end method

.method public getTopNumber()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->topNumber:I

    return v0
.end method

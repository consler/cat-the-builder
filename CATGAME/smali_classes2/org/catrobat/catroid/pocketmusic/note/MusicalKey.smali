.class public final enum Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;
.super Ljava/lang/Enum;
.source "MusicalKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

.field public static final enum BASS:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

.field public static final enum VIOLIN:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;


# instance fields
.field private noteNameOnMiddleLine:Lorg/catrobat/catroid/pocketmusic/note/NoteName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->D3:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const-string v2, "BASS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;-><init>(Ljava/lang/String;ILorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->BASS:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->B4:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const-string v2, "VIOLIN"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;-><init>(Ljava/lang/String;ILorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->VIOLIN:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    .line 25
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->BASS:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/catrobat/catroid/pocketmusic/note/NoteName;)V
    .locals 0
    .param p3, "noteNameOnMiddleLine"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/pocketmusic/note/NoteName;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->noteNameOnMiddleLine:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    return-object v0
.end method


# virtual methods
.method public getNoteNameOnMiddleLine()Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->noteNameOnMiddleLine:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    return-object v0
.end method

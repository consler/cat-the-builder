.class public final enum Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;
.super Ljava/lang/Enum;
.source "NoteFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

.field public static final enum DOUBLE_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

.field public static final enum NO_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

.field public static final enum SINGLE_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    const-string v1, "NO_FLAG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->NO_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    const-string v1, "SINGLE_FLAG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->SINGLE_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    const-string v1, "DOUBLE_FLAG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->DOUBLE_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    .line 25
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    sget-object v5, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->NO_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->SINGLE_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    return-object v0
.end method

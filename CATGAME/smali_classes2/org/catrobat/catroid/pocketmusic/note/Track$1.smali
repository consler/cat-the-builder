.class Lorg/catrobat/catroid/pocketmusic/note/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/pocketmusic/note/Track;->getNoteEventsForTick(J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/pocketmusic/note/Track;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/Track;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/pocketmusic/note/Track;

    .line 107
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/Track$1;->this$0:Lorg/catrobat/catroid/pocketmusic/note/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 107
    check-cast p1, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    check-cast p2, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/pocketmusic/note/Track$1;->compare(Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;)I
    .locals 2
    .param p1, "noteEvent1"    # Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    .param p2, "noteEvent2"    # Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 110
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v0

    invoke-virtual {p2}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

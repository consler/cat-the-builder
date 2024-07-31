.class public Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
.super Ljava/lang/Object;
.source "NoteEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x67d9095cc363ca53L


# instance fields
.field private noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

.field private noteOn:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;)V
    .locals 1
    .param p1, "noteEvent"    # Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 41
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteOn:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Z)V
    .locals 0
    .param p1, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p2, "noteOn"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 36
    iput-boolean p2, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteOn:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 60
    .local v1, "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteOn:Z

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 55
    .end local v1    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    :cond_2
    :goto_0
    return v0
.end method

.method public getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 65
    const/16 v0, 0xf

    .line 66
    .local v0, "hashCode":I
    const/16 v1, 0x1f

    .line 67
    .local v1, "primeWithGoodCollisionPrevention":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 68
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteOn:Z

    add-int/2addr v0, v3

    return v0
.end method

.method public isNoteOn()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteOn:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NoteEvent] noteName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " noteOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->noteOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

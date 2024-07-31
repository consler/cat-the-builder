.class public Lorg/catrobat/catroid/pocketmusic/note/Project;
.super Ljava/lang/Object;
.source "Project.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_BEAT:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field public static final DEFAULT_BEATS_PER_MINUTE:I = 0x3c

.field public static final DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

.field private static final serialVersionUID:J = 0x66a6954030ef4c90L


# instance fields
.field private beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field private beatsPerMinute:I

.field private file:Ljava/io/File;

.field private name:Ljava/lang/String;

.field private tracks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/pocketmusic/note/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_BEAT:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 35
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->ACOUSTIC_GRAND_PIANO:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "beat"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .param p3, "beatsPerMinute"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->name:Ljava/lang/String;

    .line 46
    iput p3, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beatsPerMinute:I

    .line 47
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/Project;)V
    .locals 5
    .param p1, "project"    # Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->name:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeatsPerMinute()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beatsPerMinute:I

    .line 54
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    .line 57
    iget-object v0, p1, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    new-instance v3, Lorg/catrobat/catroid/pocketmusic/note/Track;

    iget-object v4, p1, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/pocketmusic/note/Track;

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/pocketmusic/note/Track;-><init>(Lorg/catrobat/catroid/pocketmusic/note/Track;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/Project;Ljava/lang/String;)V
    .locals 0
    .param p1, "project"    # Lorg/catrobat/catroid/pocketmusic/note/Project;
    .param p2, "name"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;-><init>(Lorg/catrobat/catroid/pocketmusic/note/Project;)V

    .line 64
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->name:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/catrobat/catroid/pocketmusic/note/Project;

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 132
    .local v1, "project":Lorg/catrobat/catroid/pocketmusic/note/Project;
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    return v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeatsPerMinute()I

    move-result v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeatsPerMinute()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 137
    return v0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 141
    return v0

    .line 144
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    iget-object v2, v1, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 127
    .end local v1    # "project":Lorg/catrobat/catroid/pocketmusic/note/Project;
    :cond_4
    :goto_0
    return v0
.end method

.method public getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    return-object v0
.end method

.method public getBeatsPerMinute()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beatsPerMinute:I

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTimeInMilliseconds()J
    .locals 7

    .line 96
    const-wide/16 v0, 0x0

    .line 98
    .local v0, "totalTime":J
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/pocketmusic/note/Track;

    .line 99
    .local v3, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getTotalTimeInMilliseconds()J

    move-result-wide v4

    .line 101
    .local v4, "trackTime":J
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 102
    move-wide v0, v4

    .line 104
    .end local v3    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v4    # "trackTime":J
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    return-wide v0
.end method

.method public getTrack(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/Track;
    .locals 1
    .param p1, "trackName"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/Track;

    return-object v0
.end method

.method public getTrackNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 115
    const/16 v0, 0x10

    .line 116
    .local v0, "hashCode":I
    const/16 v1, 0x1f

    .line 117
    .local v1, "primeWithGoodCollisionPrevention":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 118
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    mul-int v0, v1, v2

    iget v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beatsPerMinute:I

    add-int/2addr v0, v3

    .line 119
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 120
    .end local v0    # "hashCode":I
    .restart local v2    # "hashCode":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 121
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method

.method public putTrack(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/Track;)V
    .locals 1
    .param p1, "trackName"    # Ljava/lang/String;
    .param p2, "track"    # Lorg/catrobat/catroid/pocketmusic/note/Track;

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 152
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->file:Ljava/io/File;

    .line 153
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public size()I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->tracks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Project] name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " beatsPerMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/note/Project;->beatsPerMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/Project;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/catrobat/catroid/common/ScratchProgramData;
.super Ljava/lang/Object;
.source "ScratchProgramData.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private createdDate:Ljava/util/Date;

.field private favorites:I

.field private id:J

.field private image:Lcom/google/android/gms/common/images/WebImage;

.field private instructions:Ljava/lang/String;

.field private loves:I

.field private modifiedDate:Ljava/util/Date;

.field private notesAndCredits:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private remixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;"
        }
    .end annotation
.end field

.field private sharedDate:Ljava/util/Date;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private views:I

.field private visibilityState:Lorg/catrobat/catroid/common/ScratchVisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    new-instance v0, Lorg/catrobat/catroid/common/ScratchProgramData$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/ScratchProgramData$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/common/ScratchProgramData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/images/WebImage;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "owner"    # Ljava/lang/String;
    .param p5, "image"    # Lcom/google/android/gms/common/images/WebImage;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->remixes:Ljava/util/List;

    .line 57
    iput-wide p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->id:J

    .line 58
    iput-object p3, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->title:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->owner:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->image:Lcom/google/android/gms/common/images/WebImage;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->instructions:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->notesAndCredits:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->views:I

    .line 64
    iput v1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->favorites:I

    .line 65
    iput v1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->loves:I

    .line 66
    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->createdDate:Ljava/util/Date;

    .line 67
    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->modifiedDate:Ljava/util/Date;

    .line 68
    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->sharedDate:Ljava/util/Date;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->tags:Ljava/util/List;

    .line 70
    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->visibilityState:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->remixes:Ljava/util/List;

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->remixes:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->id:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->title:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->owner:Ljava/lang/String;

    .line 78
    const-class v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->image:Lcom/google/android/gms/common/images/WebImage;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->instructions:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->notesAndCredits:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->views:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->favorites:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->loves:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 85
    .local v0, "createdDateTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v4, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->createdDate:Ljava/util/Date;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 87
    .local v6, "modifiedDateTime":J
    cmp-long v4, v6, v2

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    :goto_1
    iput-object v4, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->modifiedDate:Ljava/util/Date;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 89
    .local v8, "sharedDateTime":J
    cmp-long v2, v8, v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_2
    iput-object v5, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->sharedDate:Ljava/util/Date;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->tags:Ljava/util/List;

    .line 91
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 92
    const-class v2, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    iput-object v2, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->visibilityState:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->remixes:Ljava/util/List;

    .line 94
    sget-object v3, Lorg/catrobat/catroid/common/ScratchProgramData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/catrobat/catroid/common/ScratchProgramData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/catrobat/catroid/common/ScratchProgramData$1;

    .line 36
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/common/ScratchProgramData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addRemixProgram(Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 1
    .param p1, "remixProgramData"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->remixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public addTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->createdDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFavorites()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->favorites:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->id:J

    return-wide v0
.end method

.method public getImage()Lcom/google/android/gms/common/images/WebImage;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->image:Lcom/google/android/gms/common/images/WebImage;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->instructions:Ljava/lang/String;

    return-object v0
.end method

.method public getLoves()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->loves:I

    return v0
.end method

.method public getModifiedDate()Ljava/util/Date;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->modifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getNotesAndCredits()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->notesAndCredits:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getRemixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->remixes:Ljava/util/List;

    return-object v0
.end method

.method public getSharedDate()Ljava/util/Date;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->sharedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->views:I

    return v0
.end method

.method public getVisibilityState()Lorg/catrobat/catroid/common/ScratchVisibilityState;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->visibilityState:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    return-object v0
.end method

.method public setCreatedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "createdDate"    # Ljava/util/Date;

    .line 166
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->createdDate:Ljava/util/Date;

    .line 167
    return-void
.end method

.method public setFavorites(I)V
    .locals 0
    .param p1, "favorites"    # I

    .line 150
    iput p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->favorites:I

    .line 151
    return-void
.end method

.method public setImage(Lcom/google/android/gms/common/images/WebImage;)V
    .locals 0
    .param p1, "image"    # Lcom/google/android/gms/common/images/WebImage;

    .line 114
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->image:Lcom/google/android/gms/common/images/WebImage;

    .line 115
    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0
    .param p1, "instructions"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->instructions:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setLoves(I)V
    .locals 0
    .param p1, "loves"    # I

    .line 158
    iput p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->loves:I

    .line 159
    return-void
.end method

.method public setModifiedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "modifiedDate"    # Ljava/util/Date;

    .line 174
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->modifiedDate:Ljava/util/Date;

    .line 175
    return-void
.end method

.method public setNotesAndCredits(Ljava/lang/String;)V
    .locals 0
    .param p1, "notesAndCredits"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->notesAndCredits:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSharedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "sharedDate"    # Ljava/util/Date;

    .line 182
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->sharedDate:Ljava/util/Date;

    .line 183
    return-void
.end method

.method public setViews(I)V
    .locals 0
    .param p1, "views"    # I

    .line 142
    iput p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->views:I

    .line 143
    return-void
.end method

.method public setVisibilityState(Lorg/catrobat/catroid/common/ScratchVisibilityState;)V
    .locals 0
    .param p1, "visibilityState"    # Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 198
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->visibilityState:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 199
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    iget-wide v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->owner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->image:Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->instructions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->notesAndCredits:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->views:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->favorites:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->loves:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->createdDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->modifiedDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide v3, v1

    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->sharedDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->visibilityState:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 226
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchProgramData;->remixes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 227
    return-void
.end method

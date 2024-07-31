.class public Lorg/catrobat/catroid/content/XmlHeader;
.super Ljava/lang/Object;
.source "XmlHeader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationBuildName:Ljava/lang/String;

.field private applicationBuildNumber:I

.field private applicationBuildType:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private catrobatLanguageVersion:D

.field private dateTimeUpload:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private isCastProject:Z

.field private landscapeMode:Z

.field private listeningLanguageTag:Ljava/lang/String;

.field private mediaLicense:Ljava/lang/String;

.field private notesAndCredits:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private platformVersion:Ljava/lang/String;

.field private programLicense:Ljava/lang/String;

.field private programName:Ljava/lang/String;

.field private remixGrandparentsUrlString:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "remixOf"
    .end annotation
.end field

.field private remixParentsUrlString:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "url"
    .end annotation
.end field

.field public scenesEnabled:Z

.field public screenMode:Lorg/catrobat/catroid/common/ScreenModes;

.field private tags:Ljava/lang/String;

.field private userHandle:Ljava/lang/String;

.field public virtualScreenHeight:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "screenHeight"
    .end annotation
.end field

.field public virtualScreenWidth:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "screenWidth"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 45
    iput v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 48
    sget-object v1, Lorg/catrobat/catroid/common/ScreenModes;->STRETCH:Lorg/catrobat/catroid/common/ScreenModes;

    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->screenMode:Lorg/catrobat/catroid/common/ScreenModes;

    .line 52
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->isCastProject:Z

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->scenesEnabled:Z

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->listeningLanguageTag:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildName:Ljava/lang/String;

    .line 61
    iput v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildNumber:I

    .line 62
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationName:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationVersion:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildType:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->deviceName:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->platform:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->platformVersion:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->tags:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->remixGrandparentsUrlString:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->remixParentsUrlString:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->userHandle:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->dateTimeUpload:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->mediaLicense:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lorg/catrobat/catroid/content/XmlHeader;->programLicense:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public getApplicationBuildName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationBuildNumber()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildNumber:I

    return v0
.end method

.method public getApplicationBuildType()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildType:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCatrobatLanguageVersion()D
    .locals 2

    .line 158
    iget-wide v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->catrobatLanguageVersion:D

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getListeningLanguageTag()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->listeningLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getNotesAndCredits()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->notesAndCredits:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->platformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemixParentsUrlString()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->remixParentsUrlString:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenMode()Lorg/catrobat/catroid/common/ScreenModes;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->screenMode:Lorg/catrobat/catroid/common/ScreenModes;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->tags:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserHandle()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->userHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualScreenHeight()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    return v0
.end method

.method public getVirtualScreenWidth()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    return v0
.end method

.method public isCastProject()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->isCastProject:Z

    return v0
.end method

.method public islandscapeMode()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->landscapeMode:Z

    return v0
.end method

.method public setApplicationBuildName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationBuildName"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setApplicationBuildNumber(I)V
    .locals 0
    .param p1, "applicationBuildNumber"    # I

    .line 186
    iput p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildNumber:I

    .line 187
    return-void
.end method

.method public setApplicationBuildType(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationBuildType"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationBuildType:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationVersion"    # Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->applicationVersion:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setCatrobatLanguageVersion(D)V
    .locals 0
    .param p1, "catrobatLanguageVersion"    # D

    .line 162
    iput-wide p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->catrobatLanguageVersion:D

    .line 163
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->description:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->deviceName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setIsCastProject(Z)V
    .locals 0
    .param p1, "isCastProject"    # Z

    .line 238
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->isCastProject:Z

    .line 239
    return-void
.end method

.method public setListeningLanguageTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "listeningLanguageTag"    # Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->listeningLanguageTag:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setNotesAndCredits(Ljava/lang/String;)V
    .locals 0
    .param p1, "notesAndCredits"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->notesAndCredits:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->platform:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setPlatformVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "platformVersion"    # Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->platformVersion:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setProjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "programName"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->programName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setRemixParentsUrlString(Ljava/lang/String;)V
    .locals 0
    .param p1, "remixParentsUrlString"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->remixParentsUrlString:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setScreenMode(Lorg/catrobat/catroid/common/ScreenModes;)V
    .locals 0
    .param p1, "screenMode"    # Lorg/catrobat/catroid/common/ScreenModes;

    .line 222
    iput-object p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->screenMode:Lorg/catrobat/catroid/common/ScreenModes;

    .line 223
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/XmlHeader;->tags:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setVirtualScreenHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 122
    iput p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 123
    return-void
.end method

.method public setVirtualScreenWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 126
    iput p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 127
    return-void
.end method

.method public setlandscapeMode(Z)V
    .locals 0
    .param p1, "landscapeMode"    # Z

    .line 234
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/XmlHeader;->landscapeMode:Z

    .line 235
    return-void
.end method

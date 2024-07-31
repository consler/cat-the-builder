.class public Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
.super Ljava/lang/Object;
.source "ProjectMetaDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;
    }
.end annotation


# instance fields
.field private xmlFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "xmlFile"    # Ljava/io/File;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->xmlFile:Ljava/io/File;

    .line 42
    return-void
.end method


# virtual methods
.method public getProjectMetaData()Lorg/catrobat/catroid/common/ProjectData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->xmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    .line 49
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    const-string v1, "org.catrobat.catroid.**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->allowTypesByWildcard([Ljava/lang/String;)V

    .line 50
    const-class v1, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements()V

    .line 54
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->xmlFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v1, "metaData":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;
    nop

    .line 58
    iget-object v2, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->xmlFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->setFile(Ljava/io/File;)V

    .line 59
    new-instance v2, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->getDirectory()Ljava/io/File;

    move-result-object v5

    .line 61
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->getLanguageVersion()D

    move-result-wide v6

    .line 62
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->hasScenes()Z

    move-result v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/common/ProjectData;-><init>(Ljava/lang/String;Ljava/io/File;DZ)V

    .line 59
    return-object v2

    .line 55
    .end local v1    # "metaData":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Project metadata invalid"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 46
    .end local v0    # "xstream":Lcom/thoughtworks/xstream/XStream;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->xmlFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

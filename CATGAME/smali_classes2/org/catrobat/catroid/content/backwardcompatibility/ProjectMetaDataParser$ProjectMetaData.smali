.class Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;
.super Ljava/lang/Object;
.source "ProjectMetaDataParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "program"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProjectMetaData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private header:Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;

.field private xmlFile:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->xmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageVersion()D
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->header:Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;

    invoke-static {v0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;->access$100(Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->header:Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;

    invoke-static {v0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;->access$000(Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasScenes()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->header:Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;

    invoke-static {v0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;->access$200(Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;)Z

    move-result v0

    return v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "xmlFile"    # Ljava/io/File;

    .line 78
    iput-object p1, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;->xmlFile:Ljava/io/File;

    .line 79
    return-void
.end method

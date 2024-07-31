.class final Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;
.super Ljava/lang/Object;
.source "ProjectMetaDataParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XmlHeaderMetaData"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private catrobatLanguageVersion:D

.field private programName:Ljava/lang/String;

.field private scenesEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;->scenesEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;->programName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;)D
    .locals 2
    .param p0, "x0"    # Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;

    .line 93
    iget-wide v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;->catrobatLanguageVersion:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;

    .line 93
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser$ProjectMetaData$XmlHeaderMetaData;->scenesEnabled:Z

    return v0
.end method

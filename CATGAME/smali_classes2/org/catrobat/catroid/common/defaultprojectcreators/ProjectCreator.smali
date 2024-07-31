.class public abstract Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;
.super Ljava/lang/Object;
.source "ProjectCreator.java"


# static fields
.field static backgroundImageScaleFactor:D


# instance fields
.field defaultProjectNameResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;->backgroundImageScaleFactor:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateValueRelativeToScaledBackground(I)I
    .locals 4
    .param p0, "value"    # I

    .line 39
    int-to-double v0, p0

    sget-wide v2, Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;->backgroundImageScaleFactor:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 40
    .local v0, "returnValue":I
    rem-int/lit8 v1, v0, 0x5

    .line 41
    .local v1, "differenceToNextFive":I
    sub-int v2, v0, v1

    return v2
.end method


# virtual methods
.method public abstract createDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDefaultProjectNameID()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;->defaultProjectNameResourceId:I

    return v0
.end method

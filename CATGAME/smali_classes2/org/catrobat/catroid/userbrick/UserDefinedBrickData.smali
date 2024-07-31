.class public abstract Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
.super Ljava/lang/Object;
.source "UserDefinedBrickData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
    }
.end annotation


# instance fields
.field type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public getType()Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    return-object v0
.end method

.method public isInput()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    sget-object v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLabel()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    sget-object v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->LABEL:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

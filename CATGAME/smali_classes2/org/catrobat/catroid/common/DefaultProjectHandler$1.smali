.class synthetic Lorg/catrobat/catroid/common/DefaultProjectHandler$1;
.super Ljava/lang/Object;
.source "DefaultProjectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/common/DefaultProjectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$catrobat$catroid$common$DefaultProjectHandler$ProjectCreatorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    invoke-static {}, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->values()[Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$1;->$SwitchMap$org$catrobat$catroid$common$DefaultProjectHandler$ProjectCreatorType:[I

    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_DEFAULT:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$1;->$SwitchMap$org$catrobat$catroid$common$DefaultProjectHandler$ProjectCreatorType:[I

    sget-object v1, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_CAST:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method

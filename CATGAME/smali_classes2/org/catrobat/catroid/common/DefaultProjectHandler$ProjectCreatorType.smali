.class public final enum Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;
.super Ljava/lang/Enum;
.source "DefaultProjectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/common/DefaultProjectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProjectCreatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

.field public static final enum PROJECT_CREATOR_CAST:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

.field public static final enum PROJECT_CREATOR_DEFAULT:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    const-string v1, "PROJECT_CREATOR_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_DEFAULT:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    const-string v1, "PROJECT_CREATOR_CAST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_CAST:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    sget-object v4, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_DEFAULT:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->$VALUES:[Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;
    .locals 1

    .line 38
    sget-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->$VALUES:[Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    return-object v0
.end method

.class public final enum Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
.super Ljava/lang/Enum;
.source "UserDefinedBrickData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserDefinedBrickDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

.field public static final enum INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

.field public static final enum LABEL:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    const-string v1, "LABEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->LABEL:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 27
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    sget-object v4, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->$VALUES:[Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
    .locals 1

    .line 27
    sget-object v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->$VALUES:[Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    return-object v0
.end method

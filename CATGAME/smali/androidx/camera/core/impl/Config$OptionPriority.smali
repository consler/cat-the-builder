.class public final enum Landroidx/camera/core/impl/Config$OptionPriority;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/Config$OptionPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/Config$OptionPriority;

.field public static final enum ALWAYS_OVERRIDE:Landroidx/camera/core/impl/Config$OptionPriority;

.field public static final enum OPTIONAL:Landroidx/camera/core/impl/Config$OptionPriority;

.field public static final enum REQUIRED:Landroidx/camera/core/impl/Config$OptionPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 253
    new-instance v0, Landroidx/camera/core/impl/Config$OptionPriority;

    const-string v1, "ALWAYS_OVERRIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/Config$OptionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->ALWAYS_OVERRIDE:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 263
    new-instance v1, Landroidx/camera/core/impl/Config$OptionPriority;

    const-string v3, "REQUIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/impl/Config$OptionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/impl/Config$OptionPriority;->REQUIRED:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 269
    new-instance v3, Landroidx/camera/core/impl/Config$OptionPriority;

    const-string v5, "OPTIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/impl/Config$OptionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/impl/Config$OptionPriority;->OPTIONAL:Landroidx/camera/core/impl/Config$OptionPriority;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/camera/core/impl/Config$OptionPriority;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 245
    sput-object v5, Landroidx/camera/core/impl/Config$OptionPriority;->$VALUES:[Landroidx/camera/core/impl/Config$OptionPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 1

    .line 245
    const-class v0, Landroidx/camera/core/impl/Config$OptionPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/Config$OptionPriority;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 1

    .line 245
    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->$VALUES:[Landroidx/camera/core/impl/Config$OptionPriority;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/Config$OptionPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/Config$OptionPriority;

    return-object v0
.end method

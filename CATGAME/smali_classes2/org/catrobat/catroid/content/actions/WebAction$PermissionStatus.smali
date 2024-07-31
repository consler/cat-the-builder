.class public final enum Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;
.super Ljava/lang/Enum;
.source "WebAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/actions/WebAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "PENDING",
        "DENIED",
        "GRANTED",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

.field public static final enum DENIED:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

.field public static final enum GRANTED:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

.field public static final enum PENDING:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

.field public static final enum UNKNOWN:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    new-instance v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->UNKNOWN:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    const-string v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->PENDING:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    const-string v2, "DENIED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->DENIED:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    const-string v2, "GRANTED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->GRANTED:Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    aput-object v1, v0, v3

    sput-object v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->$VALUES:[Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;
    .locals 1

    const-class v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;
    .locals 1

    sget-object v0, Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->$VALUES:[Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/actions/WebAction$PermissionStatus;

    return-object v0
.end method

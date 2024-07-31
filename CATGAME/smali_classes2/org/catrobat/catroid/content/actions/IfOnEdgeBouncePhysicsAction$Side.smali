.class public final enum Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;
.super Ljava/lang/Enum;
.source "IfOnEdgeBouncePhysicsAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;",
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
        "Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;",
        "",
        "(Ljava/lang/String;I)V",
        "TOP",
        "BOTTOM",
        "LEFT",
        "RIGHT",
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
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

.field public static final enum BOTTOM:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

.field public static final enum LEFT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

.field public static final enum RIGHT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

.field public static final enum TOP:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    new-instance v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    const-string v2, "TOP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->TOP:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    const-string v2, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->BOTTOM:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    const-string v2, "LEFT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->LEFT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    const-string v2, "RIGHT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->RIGHT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    aput-object v1, v0, v3

    sput-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->$VALUES:[Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;
    .locals 1

    const-class v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;
    .locals 1

    sget-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->$VALUES:[Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    return-object v0
.end method

.class final enum Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;
.super Ljava/lang/Enum;
.source "BaseToolWithRectangleShape.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResizeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "TOP",
        "RIGHT",
        "BOTTOM",
        "LEFT",
        "TOPLEFT",
        "TOPRIGHT",
        "BOTTOMLEFT",
        "BOTTOMRIGHT",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum BOTTOM:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum NONE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum TOP:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public static final enum TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->NONE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOP:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "RIGHT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "BOTTOM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOM:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "LEFT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "TOPLEFT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "TOPRIGHT"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "BOTTOMLEFT"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    const-string v2, "BOTTOMRIGHT"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    aput-object v1, v0, v3

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->$VALUES:[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

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

    .line 775
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->$VALUES:[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v0}, [Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    return-object v0
.end method

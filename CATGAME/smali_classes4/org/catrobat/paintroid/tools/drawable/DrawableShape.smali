.class public final enum Lorg/catrobat/paintroid/tools/drawable/DrawableShape;
.super Ljava/lang/Enum;
.source "DrawableShape.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableShape;",
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
        "Lorg/catrobat/paintroid/tools/drawable/DrawableShape;",
        "",
        "(Ljava/lang/String;I)V",
        "RECTANGLE",
        "OVAL",
        "HEART",
        "STAR",
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
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

.field public static final enum HEART:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

.field public static final enum OVAL:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

.field public static final enum RECTANGLE:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

.field public static final enum STAR:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    new-instance v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    const-string v2, "RECTANGLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->RECTANGLE:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    const-string v2, "OVAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->OVAL:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    const-string v2, "HEART"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->HEART:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    const-string v2, "STAR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->STAR:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    aput-object v1, v0, v3

    sput-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->$VALUES:[Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/tools/drawable/DrawableShape;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/tools/drawable/DrawableShape;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->$VALUES:[Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-virtual {v0}, [Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    return-object v0
.end method

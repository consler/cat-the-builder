.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fixed"
.end annotation


# static fields
.field static final cache:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/16 v0, 0x6f

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->cache:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    .line 44
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    .line 45
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    .line 46
    return-void
.end method

.method public static valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
    .locals 4
    .param p0, "value"    # F

    .line 57
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    return-object v0

    .line 58
    :cond_0
    const/high16 v0, -0x3ee00000    # -10.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    float-to-int v0, p0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 59
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->cache:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    float-to-int v1, p0

    add-int/lit8 v1, v1, 0xa

    aget-object v1, v0, v1

    .line 60
    .local v1, "fixed":Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
    if-nez v1, :cond_1

    float-to-int v2, p0

    add-int/lit8 v2, v2, 0xa

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    move-object v1, v3

    aput-object v3, v0, v2

    .line 61
    :cond_1
    return-object v1

    .line 63
    .end local v1    # "fixed":Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .param p1, "context"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 49
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

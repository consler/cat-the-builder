.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Pool$Poolable;"
    }
.end annotation


# static fields
.field private static final bottomi:Ljava/lang/Integer;

.field private static final centeri:Ljava/lang/Integer;

.field private static defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private static files:Lcom/badlogic/gdx/Files;

.field private static final lefti:Ljava/lang/Integer;

.field private static final onef:Ljava/lang/Float;

.field private static final onei:Ljava/lang/Integer;

.field private static final righti:Ljava/lang/Integer;

.field private static final topi:Ljava/lang/Integer;

.field private static final zerof:Ljava/lang/Float;

.field private static final zeroi:Ljava/lang/Integer;


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field actorHeight:F

.field actorWidth:F

.field actorX:F

.field actorY:F

.field align:Ljava/lang/Integer;

.field cellAboveIndex:I

.field colspan:Ljava/lang/Integer;

.field column:I

.field computedPadBottom:F

.field computedPadLeft:F

.field computedPadRight:F

.field computedPadTop:F

.field endRow:Z

.field expandX:Ljava/lang/Integer;

.field expandY:Ljava/lang/Integer;

.field fillX:Ljava/lang/Float;

.field fillY:Ljava/lang/Float;

.field maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field row:I

.field spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field uniformX:Ljava/lang/Boolean;

.field uniformY:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    .line 16
    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    .line 17
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 45
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 46
    .local v0, "defaults":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    .line 991
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->files:Lcom/badlogic/gdx/Files;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v0, v1, :cond_1

    .line 992
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->files:Lcom/badlogic/gdx/Files;

    .line 993
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 994
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 995
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 996
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 997
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 998
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 999
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1000
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1001
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1002
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1003
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1004
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1005
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1006
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1007
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1008
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 1009
    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 1010
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 1011
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 1012
    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 1013
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 1014
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 1015
    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 1017
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 504
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 505
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 535
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 538
    :goto_0
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 511
    return-object p0
.end method

.method clear()V
    .locals 1

    .line 899
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 900
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 901
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 902
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 903
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 904
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 905
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 906
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 907
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 908
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 909
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 910
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 911
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 912
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 913
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 914
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 915
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 916
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 917
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 918
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 919
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 920
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 921
    return-void
.end method

.method public clearActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 66
    return-object p0
.end method

.method public colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "colspan"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 606
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 607
    return-object p0
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 575
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 576
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 577
    return-object p0
.end method

.method public expand(II)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 593
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 594
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 595
    return-object p0
.end method

.method public expand(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 601
    if-eqz p2, :cond_1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 602
    return-object p0
.end method

.method public expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 582
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 583
    return-object p0
.end method

.method public expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 588
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 589
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 464
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 465
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 466
    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 482
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 483
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 484
    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "fill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 497
    if-eqz p1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 498
    return-object p0
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 490
    if-eqz p2, :cond_1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 491
    return-object p0
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 471
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 472
    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 478
    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getActorHeight()F
    .locals 1

    .line 673
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    return v0
.end method

.method public getActorWidth()F
    .locals 1

    .line 665
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    return v0
.end method

.method public getActorX()F
    .locals 1

    .line 649
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    return v0
.end method

.method public getActorY()F
    .locals 1

    .line 657
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    return v0
.end method

.method public getAlign()I
    .locals 1

    .line 836
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColspan()I
    .locals 1

    .line 851
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 681
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    return v0
.end method

.method public getComputedPadBottom()F
    .locals 1

    .line 881
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    return v0
.end method

.method public getComputedPadLeft()F
    .locals 1

    .line 876
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    return v0
.end method

.method public getComputedPadRight()F
    .locals 1

    .line 886
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    return v0
.end method

.method public getComputedPadTop()F
    .locals 1

    .line 871
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    return v0
.end method

.method public getExpandX()I
    .locals 1

    .line 841
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpandY()I
    .locals 1

    .line 846
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFillX()F
    .locals 1

    .line 826
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFillY()F
    .locals 1

    .line 831
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .line 739
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 735
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 2

    .line 730
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 726
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 2

    .line 703
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 699
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .locals 2

    .line 694
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 690
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadBottom()F
    .locals 2

    .line 802
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 798
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 2

    .line 793
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 789
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 2

    .line 811
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 807
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 2

    .line 784
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 780
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 3

    .line 816
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 3

    .line 821
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .line 721
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 717
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 2

    .line 712
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 708
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 685
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    return v0
.end method

.method public getSpaceBottom()F
    .locals 2

    .line 766
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 762
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceLeft()F
    .locals 2

    .line 757
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 753
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceRight()F
    .locals 2

    .line 775
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 771
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceTop()F
    .locals 2

    .line 748
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 744
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 894
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getUniformX()Z
    .locals 1

    .line 856
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUniformY()Z
    .locals 1

    .line 861
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 553
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 554
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 555
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 556
    return-object p0
.end method

.method public growX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 562
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 563
    return-object p0
.end method

.method public growY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 569
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 570
    return-object p0
.end method

.method public hasActor()Z
    .locals 1

    .line 76
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 143
    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 135
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 136
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 137
    return-object p0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEndRow()Z
    .locals 1

    .line 866
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    return v0
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 526
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 529
    :goto_0
    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "maxHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 296
    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "maxHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 273
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 274
    return-object p0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 280
    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 286
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 251
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 252
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 253
    return-object p0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_1

    .line 259
    if-eqz p2, :cond_0

    .line 260
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 261
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 262
    return-object p0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "maxWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 291
    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "maxWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 268
    return-object p0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1
    .param p1, "cell"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 959
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_0

    return-void

    .line 960
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 961
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 962
    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 963
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 964
    :cond_4
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 965
    :cond_5
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 966
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 967
    :cond_7
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 968
    :cond_8
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_9

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 969
    :cond_9
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_a

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 970
    :cond_a
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 971
    :cond_b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 972
    :cond_c
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 973
    :cond_d
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 974
    :cond_e
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 975
    :cond_f
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    if-eqz v0, :cond_10

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 976
    :cond_10
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 977
    :cond_11
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 978
    :cond_12
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 979
    :cond_13
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 980
    :cond_14
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 981
    :cond_15
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 982
    :cond_16
    return-void
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "minHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 194
    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "minHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 171
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 172
    return-object p0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 178
    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 184
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 149
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 150
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 151
    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_1

    .line 157
    if-eqz p2, :cond_0

    .line 158
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 159
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 160
    return-object p0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "minWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 189
    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "minWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 166
    return-object p0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "pad"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 434
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v2

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 439
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "pad"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 388
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 389
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 390
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 391
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 392
    return-object p0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_3

    .line 397
    if-eqz p2, :cond_2

    .line 398
    if-eqz p3, :cond_1

    .line 399
    if-eqz p4, :cond_0

    .line 400
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 401
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 402
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 403
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 404
    return-object p0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 454
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 421
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 422
    return-object p0

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padLeft"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 449
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 415
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 416
    return-object p0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padRight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 459
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 427
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 428
    return-object p0

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "padTop"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 444
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "padTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 409
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 410
    return-object p0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "prefHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 245
    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "prefHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 223
    return-object p0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 235
    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 229
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 200
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 201
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 202
    return-object p0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_1

    .line 208
    if-eqz p2, :cond_0

    .line 209
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 210
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 211
    return-object p0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "prefWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 240
    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "prefWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 216
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 217
    return-object p0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 925
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 926
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 928
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 929
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 930
    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 544
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 547
    :goto_0
    return-object p0
.end method

.method public row()V
    .locals 1

    .line 890
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 891
    return-void
.end method

.method set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1
    .param p1, "cell"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 933
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 934
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 935
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 936
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 937
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 938
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 939
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 940
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 941
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 942
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 943
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 944
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 945
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 946
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 947
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 948
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 949
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 950
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 951
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 952
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 953
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 954
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 955
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TA;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TA;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    .local p1, "newActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TA;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v0, p1, :cond_1

    .line 56
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 58
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 60
    :cond_1
    return-object p0
.end method

.method public setActorBounds(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 642
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 643
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 644
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 645
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 646
    return-void
.end method

.method public setActorHeight(F)V
    .locals 0
    .param p1, "actorHeight"    # F

    .line 677
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 678
    return-void
.end method

.method public setActorWidth(F)V
    .locals 0
    .param p1, "actorWidth"    # F

    .line 669
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 670
    return-void
.end method

.method public setActorX(F)V
    .locals 0
    .param p1, "actorX"    # F

    .line 653
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 654
    return-void
.end method

.method public setActorY(F)V
    .locals 0
    .param p1, "actorY"    # F

    .line 661
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 662
    return-void
.end method

.method public setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 0
    .param p1, "table"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 50
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 51
    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 107
    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 113
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 83
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 87
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 88
    return-object p0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_1

    .line 94
    if-eqz p2, :cond_0

    .line 95
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 96
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 97
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 98
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 99
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 100
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 101
    return-object p0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "space"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 348
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 349
    return-object p0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "space cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    .line 354
    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    .line 355
    cmpg-float v1, p3, v0

    if-ltz v1, :cond_1

    .line 356
    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 357
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v2

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 358
    return-object p0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "right cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bottom cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "top cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "space"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 302
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 303
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 304
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 305
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 306
    return-object p0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "space cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_3

    .line 311
    if-eqz p2, :cond_2

    .line 312
    if-eqz p3, :cond_1

    .line 313
    if-eqz p4, :cond_0

    .line 314
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 315
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 316
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 317
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 318
    return-object p0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "spaceBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 375
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 376
    return-object p0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceBottom cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 335
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 336
    return-object p0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "spaceLeft"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 369
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 370
    return-object p0

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceLeft cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 329
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 330
    return-object p0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "spaceRight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 381
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 382
    return-object p0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceRight cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 341
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 342
    return-object p0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "spaceTop"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 363
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 364
    return-object p0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceTop cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "spaceTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 323
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 324
    return-object p0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 985
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 517
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 520
    :goto_0
    return-object p0
.end method

.method public uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 612
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 613
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 614
    return-object p0
.end method

.method public uniform(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "uniform"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 631
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 632
    return-object p0
.end method

.method public uniform(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 637
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 638
    return-object p0
.end method

.method public uniformX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 620
    return-object p0
.end method

.method public uniformY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 625
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 626
    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .param p1, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 128
    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 120
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 121
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 122
    return-object p0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

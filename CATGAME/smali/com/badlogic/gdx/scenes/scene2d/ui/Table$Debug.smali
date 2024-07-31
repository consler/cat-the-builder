.class public final enum Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
.super Ljava/lang/Enum;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Debug"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public static final enum table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1271
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "all"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "table"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "cell"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const-string v1, "actor"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 1270
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v7, v1, v2

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v2, v1, v3

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v2, v1, v4

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1270
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1

    .line 1270
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

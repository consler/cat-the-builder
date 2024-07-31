.class public final enum Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
.super Ljava/lang/Enum;
.source "GLVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/GLVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 148
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "OpenGL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "GLES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "WebGL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 151
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "NONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 147
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v6, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->$VALUES:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    const-class v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .locals 1

    .line 147
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->$VALUES:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object v0
.end method

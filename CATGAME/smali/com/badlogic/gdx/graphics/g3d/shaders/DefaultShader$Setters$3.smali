.class final Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$3;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$GlobalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$GlobalSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"    # I
    .param p3, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 139
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/math/Matrix4;)Z

    .line 140
    return-void
.end method

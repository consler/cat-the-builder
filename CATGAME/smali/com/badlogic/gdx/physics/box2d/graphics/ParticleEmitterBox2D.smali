.class public Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.source "ParticleEmitterBox2D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$ParticleBox2D;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.001f


# instance fields
.field final endPoint:Lcom/badlogic/gdx/math/Vector2;

.field normalAngle:F

.field particleCollided:Z

.field final rayCallBack:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

.field final startPoint:Lcom/badlogic/gdx/math/Vector2;

.field final world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;

    .line 62
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;-><init>()V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->startPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->endPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;-><init>(Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->rayCallBack:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 63
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "emitter"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 83
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->startPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->endPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;-><init>(Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->rayCallBack:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;Ljava/io/BufferedReader;)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;-><init>(Ljava/io/BufferedReader;)V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->startPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->endPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;-><init>(Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->rayCallBack:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 74
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 75
    return-void
.end method


# virtual methods
.method protected newParticle(Lcom/badlogic/gdx/graphics/g2d/Sprite;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    .locals 1
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 89
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$ParticleBox2D;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$ParticleBox2D;-><init>(Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-object v0
.end method

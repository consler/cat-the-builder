.class public Lorg/apache/commons/collections/functors/ForClosure;
.super Ljava/lang/Object;
.source "ForClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field static synthetic class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x10842851d0d342aaL


# instance fields
.field private final iClosure:Lorg/apache/commons/collections/Closure;

.field private final iCount:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/collections/Closure;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    .line 84
    iput-object p2, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 123
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1

    if-lez p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return-object p1

    .line 71
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/functors/ForClosure;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/ForClosure;-><init>(ILorg/apache/commons/collections/Closure;)V

    return-object v0

    .line 66
    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    sget-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.ForClosure"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/ForClosure;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.ForClosure"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/ForClosure;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    return v0
.end method

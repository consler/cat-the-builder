.class public Lcom/opencsv/bean/FieldAccess;
.super Ljava/lang/Object;
.source "FieldAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final accessor:Lcom/opencsv/bean/function/AccessorInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/function/AccessorInvoker<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final assignment:Lcom/opencsv/bean/function/AssignmentInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/function/AssignmentInvoker<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    .line 42
    invoke-direct {p0}, Lcom/opencsv/bean/FieldAccess;->determineAccessorMethod()Lcom/opencsv/bean/function/AccessorInvoker;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/FieldAccess;->accessor:Lcom/opencsv/bean/function/AccessorInvoker;

    .line 43
    invoke-direct {p0}, Lcom/opencsv/bean/FieldAccess;->determineAssignmentMethod()Lcom/opencsv/bean/function/AssignmentInvoker;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/FieldAccess;->assignment:Lcom/opencsv/bean/function/AssignmentInvoker;

    return-void
.end method

.method private determineAccessorMethod()Lcom/opencsv/bean/function/AccessorInvoker;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/function/AccessorInvoker<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    .line 50
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda2;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    new-instance v1, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda3;-><init>(Lcom/opencsv/bean/FieldAccess;)V

    :goto_0
    return-object v1
.end method

.method private determineAssignmentMethod()Lcom/opencsv/bean/function/AssignmentInvoker;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/function/AssignmentInvoker<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    .line 63
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    new-instance v1, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/opencsv/bean/FieldAccess$$ExternalSyntheticLambda1;-><init>(Lcom/opencsv/bean/FieldAccess;)V

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$determineAccessorMethod$0(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineAssignmentMethod$2(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 66
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 118
    instance-of v0, p1, Lcom/opencsv/bean/FieldAccess;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    check-cast p1, Lcom/opencsv/bean/FieldAccess;

    iget-object p1, p1, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/opencsv/bean/FieldAccess;->accessor:Lcom/opencsv/bean/function/AccessorInvoker;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/function/AccessorInvoker;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v0

    return v0
.end method

.method synthetic lambda$determineAccessorMethod$1$com-opencsv-bean-FieldAccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$determineAssignmentMethod$3$com-opencsv-bean-FieldAccess(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setField(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/opencsv/bean/FieldAccess;->assignment:Lcom/opencsv/bean/function/AssignmentInvoker;

    invoke-interface {v0, p1, p2}, Lcom/opencsv/bean/function/AssignmentInvoker;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/opencsv/bean/FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;
.super Ljava/lang/Object;
.source "MethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/MethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final exact:Z

.field private final hashCode:I

.field private final methodName:Ljava/lang/String;

.field private final paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)V
    .locals 2
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "exact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1322
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    if-eqz p1, :cond_2

    .line 1326
    if-eqz p2, :cond_1

    .line 1329
    if-nez p3, :cond_0

    .line 1330
    invoke-static {}, Lorg/apache/commons/beanutils/MethodUtils;->access$000()[Ljava/lang/Class;

    move-result-object p3

    .line 1333
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->cls:Ljava/lang/Class;

    .line 1334
    iput-object p2, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->methodName:Ljava/lang/String;

    .line 1335
    iput-object p3, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->paramTypes:[Ljava/lang/Class;

    .line 1336
    iput-boolean p4, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->exact:Z

    .line 1338
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->hashCode:I

    .line 1339
    return-void

    .line 1327
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method Name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1324
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1347
    instance-of v0, p1, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1348
    return v1

    .line 1350
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;

    .line 1352
    .local v0, "md":Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->exact:Z

    iget-boolean v3, v0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->exact:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->methodName:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->methodName:Ljava/lang/String;

    .line 1354
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->cls:Ljava/lang/Class;

    iget-object v3, v0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->cls:Ljava/lang/Class;

    .line 1355
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->paramTypes:[Ljava/lang/Class;

    iget-object v3, v0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->paramTypes:[Ljava/lang/Class;

    .line 1356
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1352
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1368
    iget v0, p0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;->hashCode:I

    return v0
.end method

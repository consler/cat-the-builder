.class public Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;
.super Ljava/lang/Object;
.source "LocaleBeanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/locale/LocaleBeanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Descriptor"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private index:I

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private propName:Ljava/lang/String;

.field private target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "index"    # I

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->index:I

    .line 673
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setTarget(Ljava/lang/Object;)V

    .line 674
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setName(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setPropName(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0, p4}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setKey(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0, p5}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setIndex(I)V

    .line 678
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 722
    iget v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropName()Ljava/lang/String;
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->propName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 731
    iput p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->index:I

    .line 732
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 713
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->key:Ljava/lang/String;

    .line 714
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 749
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->name:Ljava/lang/String;

    .line 750
    return-void
.end method

.method public setPropName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propName"    # Ljava/lang/String;

    .line 767
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->propName:Ljava/lang/String;

    .line 768
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 695
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->target:Ljava/lang/Object;

    .line 696
    return-void
.end method

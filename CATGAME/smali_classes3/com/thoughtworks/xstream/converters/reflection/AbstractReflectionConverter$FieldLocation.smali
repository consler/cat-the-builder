.class Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;
.super Ljava/lang/Object;
.source "AbstractReflectionConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldLocation"
.end annotation


# instance fields
.field final definedIn:Ljava/lang/Class;

.field final fieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "definedIn"    # Ljava/lang/Class;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    .line 614
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    .line 615
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 626
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 627
    return v0

    .line 629
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 630
    return v1

    .line 632
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 633
    return v1

    .line 635
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;

    .line 636
    .local v2, "other":Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    iget-object v4, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    if-eq v3, v4, :cond_3

    .line 637
    return v1

    .line 639
    :cond_3
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 640
    iget-object v3, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 641
    return v1

    .line 643
    :cond_4
    iget-object v4, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 644
    return v1

    .line 646
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 618
    const/4 v0, 0x7

    .line 619
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 620
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x7

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 621
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x7

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 622
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

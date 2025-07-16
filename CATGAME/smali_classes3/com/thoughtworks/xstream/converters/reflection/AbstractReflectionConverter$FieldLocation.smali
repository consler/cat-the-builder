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

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    .line 614
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 632
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 635
    :cond_2
    check-cast p1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;

    .line 636
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    iget-object v3, p1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    if-eq v2, v3, :cond_3

    return v1

    .line 639
    :cond_3
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 640
    iget-object p1, p1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-eqz p1, :cond_5

    return v1

    .line 643
    :cond_4
    iget-object p1, p1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/4 v2, 0x7

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 621
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

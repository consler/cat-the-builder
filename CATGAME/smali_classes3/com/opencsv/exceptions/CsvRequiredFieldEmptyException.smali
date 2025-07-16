.class public Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
.super Lcom/opencsv/exceptions/CsvException;
.source "CsvRequiredFieldEmptyException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final transient destinationFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p2}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    .line 67
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    .line 112
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    .line 80
    new-instance p1, Lorg/apache/commons/collections4/list/UnmodifiableList;

    invoke-direct {p1, p2}, Lorg/apache/commons/collections4/list/UnmodifiableList;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    .line 128
    new-instance p1, Lorg/apache/commons/collections4/list/UnmodifiableList;

    invoke-direct {p1, p2}, Lorg/apache/commons/collections4/list/UnmodifiableList;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDestinationField()Ljava/lang/reflect/Field;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :goto_0
    return-object v0
.end method

.method public getDestinationFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationFields:Ljava/util/List;

    return-object v0
.end method

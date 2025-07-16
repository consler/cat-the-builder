.class public Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;
.super Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;
.source "ReferenceByXPathMarshaller.java"


# instance fields
.field private final mode:I


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 25
    iput p4, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    return-void
.end method


# virtual methods
.method protected createReference(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 29
    check-cast p2, Lcom/thoughtworks/xstream/io/path/Path;

    .line 30
    iget v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/thoughtworks/xstream/io/path/Path;->relativeTo(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object p2

    .line 31
    :goto_0
    iget p1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    sget v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    and-int/2addr p1, v0

    if-lez p1, :cond_1

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/path/Path;->explicit()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/path/Path;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method protected createReferenceKey(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method protected fireValidReference(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

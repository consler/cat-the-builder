.class Lcom/thoughtworks/xstream/XStream$2;
.super Ljava/lang/Object;
.source "XStream.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ConverterRegistry;


# instance fields
.field private final synthetic val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$2;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 1
    .param p1, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;
    .param p2, "priority"    # I

    .line 521
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$2;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 522
    return-void
.end method

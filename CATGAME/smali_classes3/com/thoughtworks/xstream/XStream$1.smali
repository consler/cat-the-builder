.class Lcom/thoughtworks/xstream/XStream$1;
.super Ljava/lang/Object;
.source "XStream.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ConverterLookup;


# instance fields
.field private final synthetic val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$1;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$1;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object p1

    return-object p1
.end method

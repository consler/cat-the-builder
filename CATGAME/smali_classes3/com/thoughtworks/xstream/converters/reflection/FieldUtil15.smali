.class Lcom/thoughtworks/xstream/converters/reflection/FieldUtil15;
.super Ljava/lang/Object;
.source "FieldUtil15.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSynthetic(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 19
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    return v0
.end method

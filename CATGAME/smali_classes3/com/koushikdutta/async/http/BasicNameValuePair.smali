.class public Lcom/koushikdutta/async/http/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lcom/koushikdutta/async/http/NameValuePair;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-eqz p1, :cond_0

    .line 120
    iput-object p1, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->name:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->value:Ljava/lang/String;

    .line 122
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 154
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 155
    :cond_1
    instance-of v2, p1, Lcom/koushikdutta/async/http/NameValuePair;

    if-eqz v2, :cond_3

    .line 156
    move-object v2, p1

    check-cast v2, Lcom/koushikdutta/async/http/BasicNameValuePair;

    .line 157
    .local v2, "that":Lcom/koushikdutta/async/http/BasicNameValuePair;
    iget-object v3, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/koushikdutta/async/http/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->value:Ljava/lang/String;

    iget-object v4, v2, Lcom/koushikdutta/async/http/BasicNameValuePair;->value:Ljava/lang/String;

    .line 158
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 157
    :goto_0
    return v0

    .line 160
    .end local v2    # "that":Lcom/koushikdutta/async/http/BasicNameValuePair;
    :cond_3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/koushikdutta/async/http/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

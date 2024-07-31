.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 40
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 41
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 40
    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .locals 1
    .param p1, "builder"    # Lokhttp3/CacheControl$Builder;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 81
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 82
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 85
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 86
    iput-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 87
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 88
    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 89
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 90
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 91
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 92
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "immutable"    # Z
    .param p13, "headerValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 65
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 66
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 67
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 68
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 69
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 70
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 71
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 72
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 73
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 74
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 75
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 76
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_0
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_1
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_3
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_4
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_5
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_6
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_7
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_8
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_9
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_a
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z

    if-eqz v1, :cond_b

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ""

    return-object v1

    .line 288
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 32
    .param p0, "headers"    # Lokhttp3/Headers;

    .line 168
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 169
    .local v1, "noCache":Z
    const/4 v2, 0x0

    .line 170
    .local v2, "noStore":Z
    const/4 v3, -0x1

    .line 171
    .local v3, "maxAgeSeconds":I
    const/4 v4, -0x1

    .line 172
    .local v4, "sMaxAgeSeconds":I
    const/4 v5, 0x0

    .line 173
    .local v5, "isPrivate":Z
    const/4 v6, 0x0

    .line 174
    .local v6, "isPublic":Z
    const/4 v7, 0x0

    .line 175
    .local v7, "mustRevalidate":Z
    const/4 v8, -0x1

    .line 176
    .local v8, "maxStaleSeconds":I
    const/4 v9, -0x1

    .line 177
    .local v9, "minFreshSeconds":I
    const/4 v10, 0x0

    .line 178
    .local v10, "onlyIfCached":Z
    const/4 v11, 0x0

    .line 179
    .local v11, "noTransform":Z
    const/4 v12, 0x0

    .line 181
    .local v12, "immutable":Z
    const/4 v13, 0x1

    .line 182
    .local v13, "canUseHeaderValue":Z
    const/4 v14, 0x0

    .line 184
    .local v14, "headerValue":Ljava/lang/String;
    const/4 v15, 0x0

    move/from16 v16, v1

    .end local v1    # "noCache":Z
    .local v15, "i":I
    .local v16, "noCache":Z
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v15, v1, :cond_14

    .line 185
    move/from16 v17, v1

    .end local v1    # "size":I
    .local v17, "size":I
    invoke-virtual {v0, v15}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "name":Ljava/lang/String;
    move/from16 v31, v12

    .end local v12    # "immutable":Z
    .local v31, "immutable":Z
    invoke-virtual {v0, v15}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, "value":Ljava/lang/String;
    const-string v0, "Cache-Control"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    if-eqz v14, :cond_0

    .line 191
    const/4 v13, 0x0

    goto :goto_1

    .line 193
    :cond_0
    move-object v14, v12

    goto :goto_1

    .line 195
    :cond_1
    const-string v0, "Pragma"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 197
    const/4 v13, 0x0

    .line 202
    :goto_1
    const/4 v0, 0x0

    .line 203
    .local v0, "pos":I
    :goto_2
    move-object/from16 v18, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 204
    move v1, v0

    .line 205
    .local v1, "tokenStart":I
    move/from16 v19, v2

    .end local v2    # "noStore":Z
    .local v19, "noStore":Z
    const-string v2, "=,;"

    invoke-static {v12, v0, v2}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 206
    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "directive":Ljava/lang/String;
    move/from16 v20, v1

    .end local v1    # "tokenStart":I
    .local v20, "tokenStart":I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v21, v3

    .end local v3    # "maxAgeSeconds":I
    .local v21, "maxAgeSeconds":I
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_5

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2

    goto :goto_3

    .line 213
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 214
    invoke-static {v12, v0}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 217
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_3

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 219
    move v1, v0

    .line 220
    .local v1, "parameterStart":I
    const-string v3, "\""

    invoke-static {v12, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 221
    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "parameter":Ljava/lang/String;
    nop

    .end local v1    # "parameterStart":I
    add-int/lit8 v0, v0, 0x1

    .line 225
    goto :goto_4

    .line 226
    .end local v3    # "parameter":Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 227
    .restart local v1    # "parameterStart":I
    const-string v3, ",;"

    invoke-static {v12, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 228
    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "parameter":Ljava/lang/String;
    goto :goto_4

    .line 209
    .end local v1    # "parameterStart":I
    .end local v21    # "maxAgeSeconds":I
    .local v3, "maxAgeSeconds":I
    :cond_4
    move/from16 v21, v3

    .line 210
    .end local v3    # "maxAgeSeconds":I
    .restart local v21    # "maxAgeSeconds":I
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 211
    const/4 v3, 0x0

    .line 232
    .local v3, "parameter":Ljava/lang/String;
    :goto_4
    const-string v1, "no-cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    const/4 v1, 0x1

    move/from16 v22, v0

    move/from16 v16, v1

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v16    # "noCache":Z
    .local v1, "noCache":Z
    goto/16 :goto_5

    .line 234
    .end local v1    # "noCache":Z
    .restart local v16    # "noCache":Z
    :cond_6
    const-string v1, "no-store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 235
    const/4 v1, 0x1

    move/from16 v22, v0

    move v2, v1

    move/from16 v3, v21

    .end local v19    # "noStore":Z
    .local v1, "noStore":Z
    goto/16 :goto_5

    .line 236
    .end local v1    # "noStore":Z
    .restart local v19    # "noStore":Z
    :cond_7
    const-string v1, "max-age"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    move/from16 v22, v0

    .end local v0    # "pos":I
    .local v22, "pos":I
    const/4 v0, -0x1

    if-eqz v1, :cond_8

    .line 237
    invoke-static {v3, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v3, v0

    move/from16 v2, v19

    .end local v21    # "maxAgeSeconds":I
    .local v0, "maxAgeSeconds":I
    goto/16 :goto_5

    .line 238
    .end local v0    # "maxAgeSeconds":I
    .restart local v21    # "maxAgeSeconds":I
    :cond_8
    const-string v1, "s-maxage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 239
    invoke-static {v3, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v4    # "sMaxAgeSeconds":I
    .local v0, "sMaxAgeSeconds":I
    goto/16 :goto_5

    .line 240
    .end local v0    # "sMaxAgeSeconds":I
    .restart local v4    # "sMaxAgeSeconds":I
    :cond_9
    const-string v1, "private"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 241
    const/4 v0, 0x1

    move v5, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v5    # "isPrivate":Z
    .local v0, "isPrivate":Z
    goto/16 :goto_5

    .line 242
    .end local v0    # "isPrivate":Z
    .restart local v5    # "isPrivate":Z
    :cond_a
    const-string v1, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 243
    const/4 v0, 0x1

    move v6, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v6    # "isPublic":Z
    .local v0, "isPublic":Z
    goto/16 :goto_5

    .line 244
    .end local v0    # "isPublic":Z
    .restart local v6    # "isPublic":Z
    :cond_b
    const-string v1, "must-revalidate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 245
    const/4 v0, 0x1

    move v7, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v7    # "mustRevalidate":Z
    .local v0, "mustRevalidate":Z
    goto/16 :goto_5

    .line 246
    .end local v0    # "mustRevalidate":Z
    .restart local v7    # "mustRevalidate":Z
    :cond_c
    const-string v1, "max-stale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 247
    const v0, 0x7fffffff

    invoke-static {v3, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v8    # "maxStaleSeconds":I
    .local v0, "maxStaleSeconds":I
    goto :goto_5

    .line 248
    .end local v0    # "maxStaleSeconds":I
    .restart local v8    # "maxStaleSeconds":I
    :cond_d
    const-string v1, "min-fresh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 249
    invoke-static {v3, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v9    # "minFreshSeconds":I
    .local v0, "minFreshSeconds":I
    goto :goto_5

    .line 250
    .end local v0    # "minFreshSeconds":I
    .restart local v9    # "minFreshSeconds":I
    :cond_e
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 251
    const/4 v0, 0x1

    move v10, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v10    # "onlyIfCached":Z
    .local v0, "onlyIfCached":Z
    goto :goto_5

    .line 252
    .end local v0    # "onlyIfCached":Z
    .restart local v10    # "onlyIfCached":Z
    :cond_f
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 253
    const/4 v0, 0x1

    move v11, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v11    # "noTransform":Z
    .local v0, "noTransform":Z
    goto :goto_5

    .line 254
    .end local v0    # "noTransform":Z
    .restart local v11    # "noTransform":Z
    :cond_10
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 255
    const/4 v0, 0x1

    move/from16 v31, v0

    move/from16 v2, v19

    move/from16 v3, v21

    .end local v31    # "immutable":Z
    .local v0, "immutable":Z
    goto :goto_5

    .line 254
    .end local v0    # "immutable":Z
    .restart local v31    # "immutable":Z
    :cond_11
    move/from16 v2, v19

    move/from16 v3, v21

    .line 257
    .end local v19    # "noStore":Z
    .end local v20    # "tokenStart":I
    .end local v21    # "maxAgeSeconds":I
    .local v2, "noStore":Z
    .local v3, "maxAgeSeconds":I
    :goto_5
    move-object/from16 v1, v18

    move/from16 v0, v22

    goto/16 :goto_2

    .line 203
    .end local v22    # "pos":I
    .local v0, "pos":I
    :cond_12
    move/from16 v19, v2

    move/from16 v21, v3

    .end local v2    # "noStore":Z
    .end local v3    # "maxAgeSeconds":I
    .restart local v19    # "noStore":Z
    .restart local v21    # "maxAgeSeconds":I
    move/from16 v12, v31

    goto :goto_6

    .line 195
    .end local v0    # "pos":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "noStore":Z
    .end local v21    # "maxAgeSeconds":I
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    :cond_13
    move-object/from16 v18, v1

    .end local v1    # "name":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    move/from16 v12, v31

    .line 184
    .end local v18    # "name":Ljava/lang/String;
    .end local v31    # "immutable":Z
    .local v12, "immutable":Z
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto/16 :goto_0

    .end local v17    # "size":I
    .local v1, "size":I
    :cond_14
    move/from16 v17, v1

    move/from16 v31, v12

    .line 260
    .end local v1    # "size":I
    .end local v12    # "immutable":Z
    .end local v15    # "i":I
    .restart local v31    # "immutable":Z
    if-nez v13, :cond_15

    .line 261
    const/4 v14, 0x0

    .line 263
    :cond_15
    new-instance v0, Lokhttp3/CacheControl;

    move-object/from16 v17, v0

    move/from16 v18, v16

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v29, v31

    move-object/from16 v30, v14

    invoke-direct/range {v17 .. v30}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public immutable()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .line 114
    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .line 138
    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .line 142
    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .line 122
    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 269
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 270
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

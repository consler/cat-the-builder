.class final Lcom/google/android/gms/internal/gtm/zztb;
.super Ljava/lang/Object;


# static fields
.field private static final zzbdu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzbdv:Lcom/google/android/gms/internal/gtm/zztr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzbdw:Lcom/google/android/gms/internal/gtm/zztr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzbdx:Lcom/google/android/gms/internal/gtm/zztr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 320
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zztb;->zzqy()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdu:Ljava/lang/Class;

    .line 321
    nop

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztb;->zzl(Z)Lcom/google/android/gms/internal/gtm/zztr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdv:Lcom/google/android/gms/internal/gtm/zztr;

    .line 323
    nop

    .line 324
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztb;->zzl(Z)Lcom/google/android/gms/internal/gtm/zztr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdw:Lcom/google/android/gms/internal/gtm/zztr;

    .line 325
    new-instance v0, Lcom/google/android/gms/internal/gtm/zztt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zztt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdx:Lcom/google/android/gms/internal/gtm/zztr;

    return-void
.end method

.method static zza(IILjava/lang/Object;Lcom/google/android/gms/internal/gtm/zztr;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 316
    if-nez p2, :cond_0

    .line 317
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gtm/zztr;->zzri()Ljava/lang/Object;

    move-result-object p2

    .line 318
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zztr;->zza(Ljava/lang/Object;IJ)V

    .line 319
    return-object p2
.end method

.method static zza(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzrh;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztr;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzrh;",
            "TUB;",
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 293
    if-nez p2, :cond_0

    .line 294
    return-object p3

    .line 295
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 296
    nop

    .line 297
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 298
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 299
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/gtm/zzrh;->zzb(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    if-eq v1, v2, :cond_1

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 304
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/android/gms/internal/gtm/zztb;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/gtm/zztr;)Ljava/lang/Object;

    move-result-object p3

    .line 305
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_3
    if-eq v2, v0, :cond_4

    .line 307
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 308
    :cond_4
    goto :goto_3

    .line 309
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 311
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/gtm/zzrh;->zzb(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 312
    invoke-static {p0, v0, p3, p4}, Lcom/google/android/gms/internal/gtm/zztb;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/gtm/zztr;)Ljava/lang/Object;

    move-result-object p3

    .line 313
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 314
    :cond_6
    goto :goto_2

    .line 315
    :cond_7
    :goto_3
    return-object p3
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzum;->zza(ILjava/util/List;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Lcom/google/android/gms/internal/gtm/zzsz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Lcom/google/android/gms/internal/gtm/zzsz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zza(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzg(ILjava/util/List;Z)V

    .line 7
    :cond_0
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/gtm/zzqq;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/gms/internal/gtm/zzqv<",
            "TFT;>;>(",
            "Lcom/google/android/gms/internal/gtm/zzqq<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqq;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object p2

    .line 282
    nop

    .line 283
    iget-object v0, p2, Lcom/google/android/gms/internal/gtm/zzqt;->zzaxo:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztc;->isEmpty()Z

    move-result v0

    .line 284
    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqq;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object p0

    .line 286
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqt;->zza(Lcom/google/android/gms/internal/gtm/zzqt;)V

    .line 287
    :cond_0
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/gtm/zzsf;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsf;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 276
    nop

    .line 277
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/gtm/zztx;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zztx;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 278
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzsf;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 279
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/gtm/zztx;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 280
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/gtm/zztr;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zztr;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zztr;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 290
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zztr;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zztr;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method static zzaa(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    return v1

    .line 138
    :cond_0
    nop

    .line 139
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v2, :cond_2

    .line 140
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 141
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbc(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    goto :goto_2

    .line 145
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbc(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_3
    :goto_2
    return v2
.end method

.method static zzab(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 157
    :cond_0
    nop

    .line 158
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v2, :cond_2

    .line 159
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 160
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbd(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    goto :goto_2

    .line 164
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbd(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    :cond_3
    :goto_2
    return v2
.end method

.method static zzac(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    return v1

    .line 176
    :cond_0
    nop

    .line 177
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v2, :cond_2

    .line 178
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 179
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbe(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    goto :goto_2

    .line 183
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 184
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbe(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    :cond_3
    :goto_2
    return v2
.end method

.method static zzad(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static zzae(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static zzaf(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 204
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzps;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzum;->zzb(ILjava/util/List;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Lcom/google/android/gms/internal/gtm/zzsz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Lcom/google/android/gms/internal/gtm/zzsz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzf(ILjava/util/List;Z)V

    .line 10
    :cond_0
    return-void
.end method

.method static zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/gtm/zzsz;)I
    .locals 1

    .line 230
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrr;

    if-eqz v0, :cond_0

    .line 231
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(ILcom/google/android/gms/internal/gtm/zzrr;)I

    move-result p0

    return p0

    .line 232
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzsk;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzb(ILcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)I

    move-result p0

    return p0
.end method

.method static zzc(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 212
    return v1

    .line 213
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 214
    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzrt;

    if-eqz v2, :cond_3

    .line 215
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrt;

    .line 216
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 217
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzrt;->zzbn(I)Ljava/lang/Object;

    move-result-object v2

    .line 218
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzps;

    if-eqz v3, :cond_1

    .line 219
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzps;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzb(Lcom/google/android/gms/internal/gtm/zzps;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_1

    .line 220
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzda(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 221
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    goto :goto_4

    .line 223
    :cond_3
    nop

    :goto_2
    if-ge v1, v0, :cond_5

    .line 224
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 225
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzps;

    if-eqz v3, :cond_4

    .line 226
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzps;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzb(Lcom/google/android/gms/internal/gtm/zzps;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_3

    .line 227
    :cond_4
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzda(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 228
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    :cond_5
    :goto_4
    return p0
.end method

.method static zzc(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzsz;",
            ")I"
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 234
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 235
    return v1

    .line 236
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 237
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 239
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrr;

    if-eqz v3, :cond_1

    .line 240
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(Lcom/google/android/gms/internal/gtm/zzrr;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_1

    .line 241
    :cond_1
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzsk;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzb(Lcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)I

    move-result v2

    add-int/2addr p0, v2

    .line 242
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_2
    return p0
.end method

.method public static zzc(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzc(ILjava/util/List;Z)V

    .line 13
    :cond_0
    return-void
.end method

.method static zzd(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzps;",
            ">;)I"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 245
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    return v1

    .line 247
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr v0, p0

    .line 248
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 249
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzps;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzb(Lcom/google/android/gms/internal/gtm/zzps;)I

    move-result p0

    add-int/2addr v0, p0

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    return v0
.end method

.method static zzd(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzsk;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzsz;",
            ")I"
        }
    .end annotation

    .line 252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 253
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    return v1

    .line 255
    :cond_0
    nop

    .line 256
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 257
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzsk;

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzc(ILcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)I

    move-result v3

    add-int/2addr v2, v3

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return v2
.end method

.method public static zzd(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzd(ILjava/util/List;Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public static zze(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzn(ILjava/util/List;Z)V

    .line 19
    :cond_0
    return-void
.end method

.method static zze(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 275
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static zzf(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zze(ILjava/util/List;Z)V

    .line 22
    :cond_0
    return-void
.end method

.method public static zzg(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzl(ILjava/util/List;Z)V

    .line 25
    :cond_0
    return-void
.end method

.method public static zzh(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zza(ILjava/util/List;Z)V

    .line 28
    :cond_0
    return-void
.end method

.method public static zzi(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzj(ILjava/util/List;Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public static zzj(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzm(ILjava/util/List;Z)V

    .line 34
    :cond_0
    return-void
.end method

.method public static zzj(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/gtm/zzrc;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdu:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    return-void
.end method

.method public static zzk(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzb(ILjava/util/List;Z)V

    .line 37
    :cond_0
    return-void
.end method

.method private static zzl(Z)Lcom/google/android/gms/internal/gtm/zztr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "**>;"
        }
    .end annotation

    .line 263
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zztb;->zzqz()Ljava/lang/Class;

    move-result-object v1

    .line 264
    if-nez v1, :cond_0

    .line 265
    return-object v0

    .line 266
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zztr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 267
    :catchall_0
    move-exception p0

    .line 268
    return-object v0
.end method

.method public static zzl(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzk(ILjava/util/List;Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public static zzm(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzh(ILjava/util/List;Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public static zzn(ILjava/util/List;Lcom/google/android/gms/internal/gtm/zzum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzum;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzum;->zzi(ILjava/util/List;Z)V

    .line 46
    :cond_0
    return-void
.end method

.method static zzo(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 74
    if-nez p2, :cond_0

    .line 75
    const/4 p0, 0x0

    return p0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztb;->zzw(Ljava/util/List;)I

    move-result p2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static zzp(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 93
    if-nez p2, :cond_0

    .line 94
    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztb;->zzx(Ljava/util/List;)I

    move-result p1

    .line 96
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzq(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 112
    if-nez p2, :cond_0

    .line 113
    const/4 p0, 0x0

    return p0

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztb;->zzy(Ljava/util/List;)I

    move-result p1

    .line 115
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public static zzqv()Lcom/google/android/gms/internal/gtm/zztr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "**>;"
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdv:Lcom/google/android/gms/internal/gtm/zztr;

    return-object v0
.end method

.method public static zzqw()Lcom/google/android/gms/internal/gtm/zztr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "**>;"
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdw:Lcom/google/android/gms/internal/gtm/zztr;

    return-object v0
.end method

.method public static zzqx()Lcom/google/android/gms/internal/gtm/zztr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zztr<",
            "**>;"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/android/gms/internal/gtm/zztb;->zzbdx:Lcom/google/android/gms/internal/gtm/zztr;

    return-object v0
.end method

.method private static zzqy()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 269
    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzqz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 272
    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzr(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 131
    if-nez p2, :cond_0

    .line 132
    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztb;->zzz(Ljava/util/List;)I

    move-result p1

    .line 134
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzs(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 150
    if-nez p2, :cond_0

    .line 151
    const/4 p0, 0x0

    return p0

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztb;->zzaa(Ljava/util/List;)I

    move-result p1

    .line 153
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzt(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 169
    if-nez p2, :cond_0

    .line 170
    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztb;->zzab(Ljava/util/List;)I

    move-result p1

    .line 172
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzu(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 188
    if-nez p2, :cond_0

    .line 189
    const/4 p0, 0x0

    return p0

    .line 190
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztb;->zzac(Ljava/util/List;)I

    move-result p1

    .line 191
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbb(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzv(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 194
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 195
    return p2

    .line 196
    :cond_0
    nop

    .line 197
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzl(II)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzw(ILjava/util/List;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 200
    if-nez p1, :cond_0

    .line 201
    const/4 p0, 0x0

    return p0

    .line 202
    :cond_0
    nop

    .line 203
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzg(IJ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzw(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 62
    :cond_0
    nop

    .line 63
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzry;

    if-eqz v2, :cond_2

    .line 64
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzry;

    .line 65
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzry;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj;->zzs(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    goto :goto_2

    .line 69
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj;->zzs(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :cond_3
    :goto_2
    return v2
.end method

.method static zzx(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 206
    if-nez p1, :cond_0

    .line 207
    const/4 p0, 0x0

    return p0

    .line 208
    :cond_0
    nop

    .line 209
    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzc(IZ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzx(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 81
    :cond_0
    nop

    .line 82
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzry;

    if-eqz v2, :cond_2

    .line 83
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzry;

    .line 84
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzry;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj;->zzt(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    goto :goto_2

    .line 88
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj;->zzt(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_3
    :goto_2
    return v2
.end method

.method static zzy(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 98
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 99
    return v1

    .line 100
    :cond_0
    nop

    .line 101
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzry;

    if-eqz v2, :cond_2

    .line 102
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzry;

    .line 103
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzry;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj;->zzu(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    goto :goto_2

    .line 107
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj;->zzu(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_3
    :goto_2
    return v2
.end method

.method static zzz(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 119
    :cond_0
    nop

    .line 120
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v2, :cond_2

    .line 121
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 122
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbh(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    goto :goto_2

    .line 126
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbh(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_3
    :goto_2
    return v2
.end method

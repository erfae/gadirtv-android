.class public final Lcom/google/android/gms/internal/cast/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ApplicationAnalyticsUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzn;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast p0, Lcom/google/android/gms/internal/cast/zzjm$zzj;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzk;I)Lcom/google/android/gms/internal/cast/zzjm$zzj;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzn;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzgm()Lcom/google/android/gms/internal/cast/zzjm$zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/cast/zzfg;->zzalc:Lcom/google/android/gms/internal/cast/zzfg;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzfg;->zzalo:Lcom/google/android/gms/internal/cast/zzfg;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzfg;->zzalp:Lcom/google/android/gms/internal/cast/zzfg;

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzb(Lcom/google/android/gms/internal/cast/zzfg;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast p0, Lcom/google/android/gms/internal/cast/zzjm$zzj;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzk;Z)Lcom/google/android/gms/internal/cast/zzjm$zzj;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzn;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object p0

    .line 23
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/cast/zzn;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;Z)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast p0, Lcom/google/android/gms/internal/cast/zzjm$zzj;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;Z)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzgm()Lcom/google/android/gms/internal/cast/zzjm$zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzn(Z)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj;
    .locals 2

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzn;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object p0

    const/4 v0, 0x1

    .line 15
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cast/zzn;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;Z)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzgm()Lcom/google/android/gms/internal/cast/zzjm$zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/cast/zzfg;->zzalm:Lcom/google/android/gms/internal/cast/zzfg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzb(Lcom/google/android/gms/internal/cast/zzfg;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast p0, Lcom/google/android/gms/internal/cast/zzjm$zzj;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/cast/zzk;I)Lcom/google/android/gms/internal/cast/zzjm$zzj;
    .locals 2

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzn;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzgm()Lcom/google/android/gms/internal/cast/zzjm$zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    move-result-object v0

    if-nez p1, :cond_0

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/cast/zzfg;->zzall:Lcom/google/android/gms/internal/cast/zzfg;

    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/cast/zzfg;->zzald:Lcom/google/android/gms/internal/cast/zzfg;

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzb(Lcom/google/android/gms/internal/cast/zzfg;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    if-eqz p1, :cond_7

    const/4 v1, 0x7

    if-eq p1, v1, :cond_6

    const/16 v1, 0xf

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_4

    const/16 v1, 0x7d2

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7d4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7d5

    if-eq p1, v1, :cond_1

    .line 43
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzakk:Lcom/google/android/gms/internal/cast/zzff;

    goto :goto_1

    .line 42
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzakp:Lcom/google/android/gms/internal/cast/zzff;

    goto :goto_1

    .line 41
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzako:Lcom/google/android/gms/internal/cast/zzff;

    goto :goto_1

    .line 40
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzakh:Lcom/google/android/gms/internal/cast/zzff;

    goto :goto_1

    .line 39
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzajz:Lcom/google/android/gms/internal/cast/zzff;

    goto :goto_1

    .line 38
    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzajx:Lcom/google/android/gms/internal/cast/zzff;

    goto :goto_1

    .line 37
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzajv:Lcom/google/android/gms/internal/cast/zzff;

    goto :goto_1

    .line 36
    :cond_7
    sget-object p1, Lcom/google/android/gms/internal/cast/zzff;->zzajt:Lcom/google/android/gms/internal/cast/zzff;

    .line 44
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzb(Lcom/google/android/gms/internal/cast/zzff;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast p0, Lcom/google/android/gms/internal/cast/zzjm$zzj;

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;
    .locals 4

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzj;->zzgn()Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzk;->zzmj:J

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzk(J)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object v0

    .line 49
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzk;->zzmk:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/cast/zzk;->zzmk:I

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzag(I)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzk;->zzbe:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzk;->zzbe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    .line 53
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzf;->zzgg()Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzm;->zzgr()Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;->zzar(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast v2, Lcom/google/android/gms/internal/cast/zzjm$zzm;

    .line 56
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzb(Lcom/google/android/gms/internal/cast/zzjm$zzm;)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    :cond_1
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzn(Z)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    .line 58
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzml:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 60
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzn;->zzs(Ljava/lang/String;)J

    move-result-wide v2

    .line 61
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;->zzi(J)Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;

    .line 62
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzf$zza;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    return-object v0
.end method

.method private static zzs(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "-"

    const-string v2, ""

    .line 69
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v1

    .line 74
    sget-object v2, Lcom/google/android/gms/internal/cast/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p0

    const-string p0, "receiverSessionId %s is not valid for hash: %s"

    invoke-virtual {v2, p0, v3}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

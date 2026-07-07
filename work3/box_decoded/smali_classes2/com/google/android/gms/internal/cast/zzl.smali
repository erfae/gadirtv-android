.class final Lcom/google/android/gms/internal/cast/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
        "Lcom/google/android/gms/cast/framework/CastSession;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzmm:Lcom/google/android/gms/internal/cast/zzg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzi;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzl;-><init>(Lcom/google/android/gms/internal/cast/zzg;)V

    return-void
.end method


# virtual methods
.method public final synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 28
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public final bridge synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method

.method public final synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 10
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public final synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 1

    .line 13
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzn;->zza(Lcom/google/android/gms/internal/cast/zzk;Z)Lcom/google/android/gms/internal/cast/zzjm$zzj;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzf;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/cast/zzhb;->zzasw:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zzc(Lcom/google/android/gms/internal/cast/zzg;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zzd(Lcom/google/android/gms/internal/cast/zzg;)V

    return-void
.end method

.method public final synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 1

    .line 22
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzg;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzn;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzf;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/cast/zzhb;->zzasv:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    return-void
.end method

.method public final synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 32
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public final synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 1

    .line 35
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzk;->zzml:Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzn;->zza(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzf;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/cast/zzhb;->zzasr:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zzc(Lcom/google/android/gms/internal/cast/zzg;)V

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zzd(Lcom/google/android/gms/internal/cast/zzg;)V

    return-void
.end method

.method public final synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 3

    .line 44
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzg;->zzay()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start a session while there\'s already an active session. Create a new one."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzn;->zza(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/cast/zzhb;->zzasq:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    return-void
.end method

.method public final synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzn;->zza(Lcom/google/android/gms/internal/cast/zzk;I)Lcom/google/android/gms/internal/cast/zzjm$zzj;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzf;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/cast/zzhb;->zzasu:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zzc(Lcom/google/android/gms/internal/cast/zzg;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzmm:Lcom/google/android/gms/internal/cast/zzg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzg;->zzf(Lcom/google/android/gms/internal/cast/zzg;)V

    return-void
.end method

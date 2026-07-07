.class final synthetic Lcom/google/android/gms/net/zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/net/zza;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/net/zza;->zze:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/net/zza;->zzd:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/net/zza;->zze:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/net/CronetProviderInstaller;->zza(Landroid/content/Context;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

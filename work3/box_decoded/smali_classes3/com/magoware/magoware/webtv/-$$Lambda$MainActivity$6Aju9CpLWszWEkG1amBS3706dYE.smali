.class public final synthetic Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;->INSTANCE:Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$6Aju9CpLWszWEkG1amBS3706dYE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/magoware/magoware/webtv/MainActivity;->lambda$sendFirebaseToken$2(Ljava/lang/Exception;)V

    return-void
.end method

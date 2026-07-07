.class Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$SingletonHelper;
.super Ljava/lang/Object;
.source "MagowareRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHelper"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2022
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$1;)V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$SingletonHelper;->INSTANCE:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;
    .locals 1

    .line 2021
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$SingletonHelper;->INSTANCE:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    return-object v0
.end method

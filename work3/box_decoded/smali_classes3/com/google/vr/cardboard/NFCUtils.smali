.class public Lcom/google/vr/cardboard/NFCUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NFCUtils"


# instance fields
.field context:Landroid/content/Context;

.field nfcAdapter:Landroid/nfc/NfcAdapter;

.field nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field nfcIntentFilters:[Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/vr/cardboard/NFCUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createNfcIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected isNFCEnabled()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils;->context:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 4
    new-instance p1, Lcom/google/vr/cardboard/NFCUtils$1;

    invoke-direct {p1, p0}, Lcom/google/vr/cardboard/NFCUtils$1;-><init>(Lcom/google/vr/cardboard/NFCUtils;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    const-string v0, "cardboard"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "http"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "goo.gl"

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "google.com"

    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/cardboard/cfg.*"

    const/4 v3, 0x2

    .line 13
    invoke-virtual {v2, v1, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/IntentFilter;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 p1, 0x1

    aput-object v0, v1, p1

    aput-object v2, v1, v3

    .line 14
    iput-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcIntentFilters:[Landroid/content/IntentFilter;

    return-void
.end method

.method protected onNFCTagDetected(Landroid/nfc/Tag;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/vr/cardboard/NFCUtils;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/cardboard/NFCUtils;->isNFCEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcIntentFilters:[Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

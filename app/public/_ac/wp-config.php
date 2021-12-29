<?php
/**
 * WordPress の基本設定
 *
 * このファイルは、インストール時に wp-config.php 作成ウィザードが利用します。
 * ウィザードを介さずにこのファイルを "wp-config.php" という名前でコピーして
 * 直接編集して値を入力してもかまいません。
 *
 * このファイルは、以下の設定を含みます。
 *
 * * MySQL 設定
 * * 秘密鍵
 * * データベーステーブル接頭辞
 * * ABSPATH
 *
 * @link https://ja.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// 注意:
// Windows の "メモ帳" でこのファイルを編集しないでください !
// 問題なく使えるテキストエディタ
// (http://wpdocs.osdn.jp/%E7%94%A8%E8%AA%9E%E9%9B%86#.E3.83.86.E3.82.AD.E3.82.B9.E3.83.88.E3.82.A8.E3.83.87.E3.82.A3.E3.82.BF 参照)
// を使用し、必ず UTF-8 の BOM なし (UTF-8N) で保存してください。


define( 'WP_HOME', 'http://localhost:7350/ac' );
define( 'WP_SITEURL', 'http://localhost:7350/ac' );

// ** MySQL 設定 - この情報はホスティング先から入手してください。 ** //
/** WordPress のためのデータベース名 */
define( 'DB_NAME', 'lwbase_app' );

/** MySQL データベースのユーザー名 */
define( 'DB_USER', 'root' );

/** MySQL データベースのパスワード */
define( 'DB_PASSWORD', '' );

/** MySQL のホスト名 */
define( 'DB_HOST', 'mysql' );

/** データベースのテーブルを作成する際のデータベースの文字セット */
define( 'DB_CHARSET', 'utf8mb4' );

/** データベースの照合順序 (ほとんどの場合変更する必要はありません) */
define( 'DB_COLLATE', '' );

/**#@+
 * 認証用ユニークキー
 *
 * それぞれを異なるユニーク (一意) な文字列に変更してください。
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org の秘密鍵サービス} で自動生成することもできます。
 * 後でいつでも変更して、既存のすべての cookie を無効にできます。これにより、すべてのユーザーを強制的に再ログインさせることになります。
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '{f@&[+%LSX=LKFXk<!s8$~Bf8}L^~J{gH^I+U~X^tw7hd992cX,|*vTiY&VL}cYR' );
define( 'SECURE_AUTH_KEY',  'PEC|NPtpOExIC^!($9%j~o?}TlG;{nu!{t{CRUs6,LxkCCysc0t(nBdd[/(@/KsA' );
define( 'LOGGED_IN_KEY',    '[}s~.[R$2{t0b@83-8zD*R>c@DcT_CbhtZ%36b};-7Ha_EQ4ys[y{u6VMYFC%D*f' );
define( 'NONCE_KEY',        'ZQ>[0&rKMR#J7lXb{Icv:b^iO4@EIt-C<6- Z#qJ00|8,e{/?D;%jI9(dB [:=Fi' );
define( 'AUTH_SALT',        'N=KTc4$N8rF]|QEMe{ Bl?Mt)a-^<az|c;f3VGsx|n=WD5}?.c@|aT-!+=E&3|hj' );
define( 'SECURE_AUTH_SALT', '=>_h+Es{fn;xTT= 6BA)go?Ux/xfg%yoz=%,&>E)duRSWvj`bGD`>},ox8*[l_?H' );
define( 'LOGGED_IN_SALT',   'd5x=s%po)Rkj<cy<<}*(tW!HgTOi01=p5]NfYpp:]y?vM^}(Y>dMw#mL%kf$?:Dp' );
define( 'NONCE_SALT',       'wG;Vy{AmCH@4?T+Y z!:AH.>^~~I?b43cO2$vmw&Pel{nrY^hOXtAq7ZK;cK[nF{' );

/**#@-*/

/**
 * WordPress データベーステーブルの接頭辞
 *
 * それぞれにユニーク (一意) な接頭辞を与えることで一つのデータベースに複数の WordPress を
 * インストールすることができます。半角英数字と下線のみを使用してください。
 */
$table_prefix = 'wp_';

/**
 * 開発者へ: WordPress デバッグモード
 *
 * この値を true にすると、開発中に注意 (notice) を表示します。
 * テーマおよびプラグインの開発者には、その開発環境においてこの WP_DEBUG を使用することを強く推奨します。
 *
 * その他のデバッグに利用できる定数についてはドキュメンテーションをご覧ください。
 *
 * @link https://ja.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* カスタム値は、この行と「編集が必要なのはここまでです」の行の間に追加してください。 */



/* 編集が必要なのはここまでです ! WordPress でのパブリッシングをお楽しみください。 */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
